#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${PROJECTOS_REPO_URL:-https://github.com/biblehs/projectos-skills.git}"
INSTALL_DIR="${PROJECTOS_INSTALL_DIR:-$HOME/.projectos-skills}"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
SKILLS_DIR="$CODEX_HOME_DIR/skills"
SOURCE_DIR="${PROJECTOS_SOURCE_DIR:-}"
MODE="all"

PUBLIC_SKILLS=(
  project-guide
  product-foundation
  system-foundation
  execution-control
  project-alignment
)

INTERNAL_SKILLS=(
  core-prd
  module-prd
  ui-mvp
  ai-pipeline
  data-auth-env
  project-master
  sprint-manager
  decision-log
  change-tracker
  release-readiness
  design-sync
  worktrack-manager
  feedback-review
  project-operating-system
)

usage() {
  cat <<'EOF'
ProjectOS Skills installer

Usage:
  install.sh            Install the complete ProjectOS local skill system
  install.sh --public   Install only the visible ProjectOS entry/layer skills
  install.sh --all      Install the complete ProjectOS local skill system

Environment:
  PROJECTOS_REPO_URL      Git repo to clone
  PROJECTOS_INSTALL_DIR   Local clone/cache directory
  PROJECTOS_SOURCE_DIR    Existing local repo directory to install from
  CODEX_HOME              Codex home directory, defaults to ~/.codex
EOF
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --all)
      MODE="all"
      ;;
    --public)
      MODE="public"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

require_git() {
  if ! command -v git >/dev/null 2>&1; then
    echo "git is required to install ProjectOS Skills." >&2
    exit 1
  fi
}

prepare_source() {
  if [ -n "$SOURCE_DIR" ]; then
    if [ ! -d "$SOURCE_DIR" ]; then
      echo "PROJECTOS_SOURCE_DIR does not exist: $SOURCE_DIR" >&2
      exit 1
    fi
    printf '%s\n' "$SOURCE_DIR"
    return
  fi

  require_git

  if [ -d "$INSTALL_DIR/.git" ]; then
    git -C "$INSTALL_DIR" pull --ff-only --quiet
  elif [ -e "$INSTALL_DIR" ]; then
    echo "Install path exists but is not a git repo: $INSTALL_DIR" >&2
    echo "Remove it or set PROJECTOS_INSTALL_DIR to another location." >&2
    exit 1
  else
    git clone --quiet "$REPO_URL" "$INSTALL_DIR"
  fi

  printf '%s\n' "$INSTALL_DIR"
}

link_skill() {
  local source_path="$1"
  local skill_name="$2"
  local target_path="$SKILLS_DIR/$skill_name"

  if [ ! -d "$source_path" ]; then
    echo "Missing skill directory: $source_path" >&2
    exit 1
  fi

  if [ -L "$target_path" ]; then
    rm "$target_path"
  elif [ -e "$target_path" ]; then
    local backup_path="$target_path.backup.$(date +%Y%m%d%H%M%S)"
    mv "$target_path" "$backup_path"
    echo "Backed up existing $skill_name to $backup_path"
  fi

  ln -s "$source_path" "$target_path"
  echo "Installed $skill_name"
}

main() {
  local source_root
  source_root="$(prepare_source)"
  mkdir -p "$SKILLS_DIR"

  for skill in "${PUBLIC_SKILLS[@]}"; do
    link_skill "$source_root/$skill" "$skill"
  done

  if [ "$MODE" = "all" ]; then
    for skill in "${INTERNAL_SKILLS[@]}"; do
      link_skill "$source_root/internal/$skill" "$skill"
    done
  fi

  echo
  if [ "$MODE" = "all" ]; then
    echo "ProjectOS Skills installed: ${#PUBLIC_SKILLS[@]} entry/layer skills + ${#INTERNAL_SKILLS[@]} internal capability skills."
  else
    echo "ProjectOS public entry/layer skills installed: ${#PUBLIC_SKILLS[@]} skills."
  fi
}

main "$@"
