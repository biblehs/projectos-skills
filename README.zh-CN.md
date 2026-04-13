<div align="center">

<img src="docs/assets/projectos-logo.png" alt="ProjectOS Skills logo" width="560">

# ProjectOS Skills

**一套给个人开发者和 AI coding agent 使用的本地项目路由系统。**

[English](README.md) | [简体中文](README.zh-CN.md)

![GitHub stars](https://img.shields.io/github/stars/biblehs/projectos-skills?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/biblehs/projectos-skills?style=for-the-badge)
![License](https://img.shields.io/github/license/biblehs/projectos-skills?style=for-the-badge)
![Status](https://img.shields.io/badge/status-v0.1%20public%20preview-06b6d4?style=for-the-badge)
![Skills](https://img.shields.io/badge/skills-19-22c55e?style=for-the-badge)
![Local First](https://img.shields.io/badge/local-first-3b82f6?style=for-the-badge)

**想法 -> PRD -> UI MVP -> 架构设计 -> 执行 -> 重新路由**

```bash
curl -fsSL https://raw.githubusercontent.com/biblehs/projectos-skills/main/install.sh | bash
```

</div>

---

ProjectOS Skills 不是线性流水线，也不是让用户手动选择一堆 skill。它是一套本地、非线性的项目路由系统，帮助个人开发者和 vibecoder 把项目从想法带到可执行状态。

如果你使用多个 AI coding agents 并行开发，ProjectOS 也可以作为共享的本地项目协议：开发前统一 PRD、UI MVP、架构和任务边界，开发后把重要变化整理回本地项目笔记。

## v0.1 Public Preview

ProjectOS Skills 是 AI 辅助项目开发的本地开源路由层，帮助开发者让一个或多个 AI coding agents 从产品思考进入有边界的开发执行，并形成更清晰的 PRD、UI MVP、架构和执行计划。

v0.1 重点覆盖：

- 把想法整理成可执行 PRD 和 MVP 边界
- 在写代码前强化第一版 UI MVP
- 定义 AI、数据、auth、env 和 runtime 边界
- 控制开发任务 scope 和验证方式
- 让本地项目笔记随着项目推进保持清楚
- 每次重要变化后重新判断下一步，而不是强制走固定流程

v0.1 有意限制在开源路由层。这个仓库只说明当前开源 skill 的行为，不展开更大的产品方向。

## Skill 系统

ProjectOS 当前包含 19 个本地 skills。这个数量本身不是问题，因为个人开发者和 vibecoder 需要的是一套足够完整的能力模块，帮助项目从想法进入真实实现。

关键是：用户不需要手动选择这 19 个。

实际使用方式只有一句：

```text
先用 project-guide。
让 ProjectOS 判断下一步。
```

### 用户入口

| Skill | 作用 |
|---|---|
| `project-guide` | 主入口。读取项目状态，并推荐下一步最该做什么。 |

### 引导层 Skills

`project-guide` 会根据项目状态路由到这些主要层：

| Skill | 作用 |
|---|---|
| `product-foundation` | 建立或刷新核心 PRD、模块边界、UI MVP、第一屏方向和设计边界。 |
| `system-foundation` | 定义 AI、数据、auth、env 和 runtime 边界。 |
| `execution-control` | 建立本地项目总控台、聚焦 sprint 和 implementation mode。 |
| `project-alignment` | 在重要修改后整理本地决策、项目笔记和发布说明。 |

### 内部能力模块

其余 skills 放在 `internal/` 中。它们会随完整系统安装，供 ProjectOS 在需要时调用；普通用户不需要单独理解和选择。

## 用户如何开始

用户不需要先理解 skill tree。

只需要说一个正常的项目想法：

```text
我想做一个ai日程管理工具
```

系统应该先从 `project-guide` 开始。

`project-guide` 会判断：

- 当前项目阶段
- PRD 成熟度
- 下一步最适合的主要引导层

默认新项目流程：

```text
project-guide
-> product-foundation
-> project-guide
-> system-foundation
-> execution-control
-> project-alignment
```

这不是死流程。`project-guide` 应该根据真实项目状态重新路由。

## 非线性和多 Agent 使用

ProjectOS 不是瀑布式流程。默认链路只是新项目启动时的参考路径。

真实使用时，它的循环是：

```text
project-guide
-> 判断下一步主要引导层
-> 进入产品、设计、系统或执行工作
-> 重要变化后刷新本地项目笔记
-> 回到 project-guide
```

对于多 agent 开发，可以把 ProjectOS 当成共享的本地项目协议：

- 分配 agent 前，先明确产品真相和 UI MVP
- 每个 agent 接 `execution-control` 拆出来的小任务
- AI、数据、auth、env、runtime 假设放在 `system-foundation`
- 重要修改后跑 `project-alignment`，避免后续 agent 使用过期上下文

## UI MVP Gate

很多个人开发者不是卡在 PRD，而是卡在第一版界面。v0.1 把 UI MVP 变成进入开发前的关键闸门。

`product-foundation` 应该定义：

- 主产品界面：根据产品核心对象和用户任务选择，例如账本、规划器、日历、时间线、编辑器、地图、对话界面、工作流看板、审核队列、画布或混合形态
- 第一屏和第一条验证路径
- 必要 UI 状态：empty、loading、normal、error、completed、blocked 或 review
- 主要交互模型
- 视觉 thesis：情绪、材质、信息密度和能量
- 色彩、字体和动效方向
- 当用户提供网站或截图时，进行参考网页适配
- 明确不做的 UI 范围
- 开始写代码前的设计验收标准

目标不是创建完整设计系统，也不是复制别人的品牌，而是帮助 AI agent 基于产品意图，并在需要时参考网页视觉，生成聚焦、有审美、有边界的 MVP。

## Implementation Loop

真实写代码前，`execution-control` 应该定义一个小任务，包含 scope、non-goals、相关模块和验证方式。

代码或设计发生重要变化后，`project-alignment` 应该更新本地项目笔记：

- PRD 是否变化？
- UI MVP 是否变化？
- AI、数据、auth、env 或 runtime 假设是否变化？
- sprint、milestone、发布范围或风险是否变化？
- `project-guide` 下一步应该推荐什么？

每一次代码推进，都应该让下一步本地项目动作更清楚。

## 开源范围

ProjectOS Skills 是给个人开发者本地使用的 AI 项目路由系统。

这个仓库聚焦：

- skill 工作流
- 文档协议
- PRD、UI MVP、system、execution、change、release 模板
- 帮用户判断下一步的路由逻辑

它保持在本地 skill 文件、本地项目文档和 agent 引导范围内。

## 仓库结构

```text
projectos-skills/
  README.md
  README.zh-CN.md
  LICENSE
  install.sh
  project-guide/
  product-foundation/
  system-foundation/
  execution-control/
  project-alignment/
  internal/
  docs/
```

根目录只保留入口和主要引导层。内部能力模块放在 `internal/`，避免用户被过多目录干扰。

## 安装

一行安装完整 19 个本地 ProjectOS skills：

```bash
curl -fsSL https://raw.githubusercontent.com/biblehs/projectos-skills/main/install.sh | bash
```

这会安装 `project-guide`、四个主要引导层 skill，以及它们会用到的内部能力模块。

如果只想安装五个可见入口/引导层 skills，可以使用：

```bash
curl -fsSL https://raw.githubusercontent.com/biblehs/projectos-skills/main/install.sh | bash -s -- --public
```

## 路由逻辑

不知道下一步做什么时，先用 `project-guide`。

路由到 `product-foundation`：

- 产品还只是 idea-level
- PRD 还不清楚
- 模块边界模糊
- MVP 范围过大

路由到 `system-foundation`：

- AI 行为是产品核心部分
- 数据、auth、env、billing 或 runtime 复杂度已经真实存在
- 实现被系统边界不清阻塞

路由到 `execution-control`：

- 产品已经存在，但需要第一个聚焦 sprint
- 优先级分散
- 下一个开发任务需要明确 scope 和验证方式

路由到 `project-alignment`：

- 已经有重要变化
- 本地项目笔记需要更新
- 决策需要记录
- 发布说明或 launch checklist 需要轻量整理

## 文档

- [First Run Flow](docs/FIRST_RUN_FLOW.md)
- [Skill System Map](docs/SKILL_SYSTEM_MAP.md)
- [中文详细说明](docs/SKILL_USAGE_ZH.md)

## License

MIT
