# 项目管理 Skill 系统中文说明

## 这套系统到底是什么

这是一套给个人开发者本地使用的项目与产品引导 skill system。

当前版本建议定位为 `v0.1 Public Preview`。它是 AI 辅助项目开发的本地开源路由系统，聚焦项目引导、PRD、UI MVP、架构设计和执行计划，不展开这个开源 skill 层之外的工作。

它的目标不是让用户手动选择一堆 skill，也不是单纯生成文档，而是把一个项目从：

- 想法
- 产品定义
- UI MVP
- 系统定义
- 执行拆解
- 本地项目笔记整理

带成一套有节奏的项目操作系统。

## 一共有多少个 skill

当前系统一共有 `19` 个本地 skills：

- `1` 个总入口：`project-guide`
- `4` 个主要引导层：`product-foundation`、`system-foundation`、`execution-control`、`project-alignment`
- `14` 个内部能力模块：放在 `internal/`，由系统按阶段使用

用户真正需要记住的不是 19 个，而是一个入口：

```text
先用 project-guide。
让 ProjectOS 判断下一步。
```

## 用户真正会看到的主要层

- `project-guide`
- `product-foundation`
- `system-foundation`
- `execution-control`
- `project-alignment`

## 五个主要层分别做什么

### 1. `project-guide`

总入口。

作用：

- 读取当前项目状态
- 判断项目处于哪个阶段
- 推荐“下一步只该进入哪一层”
- 必要时说明背后会用到哪些内部能力模块

### 2. `product-foundation`

产品基础层。

作用：

- 产出或更新核心 PRD
- 划分模块边界
- 定义 UI MVP、第一屏方向和设计边界

### 3. `system-foundation`

系统基础层。

作用：

- 定义 AI 流程
- 定义数据、auth、env、runtime 边界

### 4. `execution-control`

执行控制层。

作用：

- 建立项目总控台
- 生成 sprint
- 真实开发前定义 implementation scope、non-goals 和验证方式

### 5. `project-alignment`

对齐层。

作用：

- 记录变化
- 沉淀决策
- 整理本地项目笔记
- 轻量整理发布说明

## 正确调用顺序是什么

默认顺序是：

1. `project-guide`
2. `product-foundation`
3. `project-guide`
4. `system-foundation`
5. `execution-control`
6. `project-alignment`

但这不是死顺序。

真正逻辑是：

- 新项目先从 `project-guide` 开始
- `project-guide` 根据项目状态推荐下一步
- 后续每到一个阶段，再决定是否进入下一层

## 这套系统怎么引导用户

### 用户的视角

用户不需要先懂 skill tree。

用户只需要说一句：

- “我想做一个产品”
- “这是我的项目想法”
- “帮我把这个项目搭起来”

### 系统的视角

系统先走 `project-guide`。

`project-guide` 会先判断：

- 当前是不是只有想法
- PRD 是否已经足够稳定
- 当前缺的是产品定义、UI MVP、系统边界、执行节奏，还是本地项目笔记整理

然后它只推荐一个下一步主要层，而不是让用户在 19 个 skill 里自己猜。

## project-guide 的核心判断逻辑

它先判断 `PRD readiness`：

- `idea-level`
- `foundation-level`
- `implementation-ready`

### 如果是 `idea-level`

说明：

- 还只是想法
- 用户是谁、核心价值、scope、MVP loop 还不清楚

下一步：

- 进入 `product-foundation`

### 如果是弱 `foundation-level`

说明：

- 已经有初步 PRD
- 但模块边界、首个验证流程、假设和 open questions 还不稳定

下一步：

- 通常还是 `product-foundation`

### 如果产品定义已经稳定

再分两种：

- 如果主要未知是 AI、数据、auth、env：
  - 进入 `system-foundation`
- 如果主要问题变成“先做什么、怎么开始做”：
  - 进入 `execution-control`

### 如果项目已经开始变化

比如：

- 本地文档和实现开始不一致
- 决策需要沉淀
- 要看 release scope
- 开始有反馈

下一步：

- 进入 `project-alignment`

## 每个阶段到底产出什么

### `project-guide`

产出：

- 当前阶段判断
- PRD readiness 判断
- 下一步推荐

### `product-foundation`

产出：

- `PRD_CORE.md`
- `modules/MODULE_MAP.md`
- 模块 PRD
- `design/UI_MVP.md`
- 必要时补充 `design/FIRST_SCREEN_SPEC.md`

UI MVP 必须回答：

- 第一版主界面是什么：根据产品核心对象和用户任务选择，比如账本、规划器、日历、时间线、编辑器、地图、对话界面、工作流看板、审核队列、画布或混合形态
- 第一屏用户看到什么
- 第一条核心验证路径是什么
- 必须支持哪些状态：empty、loading、normal、error、completed、blocked 或 review
- 主要交互模型是什么
- 视觉 thesis 是什么：情绪、材质、信息密度和能量
- 色彩、字体和动效方向是什么
- 如果用户提供参考网站或截图，应该提取哪些视觉原则、替换哪些品牌细节、如何做视觉 QA
- 第一版明确不做哪些 UI
- 什么标准下可以进入前端实现

UI MVP 的目标不是完整设计系统，也不是复制别人的品牌，而是让 AI agent 能基于产品意图和合法的视觉参考，生成聚焦、有审美、有边界的第一版产品界面。

### `system-foundation`

产出：

- `architecture/AI_PIPELINE.md`
- `architecture/DATA_AUTH_ENV.md`

### `execution-control`

产出：

- `PROJECT_MASTER.md`
- `execution/SPRINT_BOARD.md`
- 必要时补充 `execution/WORKTRACK_BOARD.md`
- 进入真实代码开发时，补充 implementation task、相关模块、non-goals 和验证清单

### `project-alignment`

产出：

- `CHANGE_REGISTRY.md`
- `decisions/DECISION_LOG.md`
- 必要时补充 `design/SCREEN_INVENTORY.md`
- 必要时补充 `feedback/FEEDBACK_REVIEW.md`
- `ops/RELEASE_READINESS.md`
- 代码、UI、AI、数据或文档变化后的本地 note-refresh summary

note-refresh gate 要检查：

- PRD 是否变化
- UI MVP 是否变化
- AI、数据、auth、env 或 runtime 是否变化
- sprint、milestone、优先级是否变化
- release scope 或风险是否变化

## 对用户来说，最简单的使用方式

你可以把它理解成 5 句话：

- 不知道下一步做什么：用 `project-guide`
- 产品定义不清楚：用 `product-foundation`
- 系统结构不清楚：用 `system-foundation`
- 要开始做了：用 `execution-control` 的 implementation mode
- 重要修改后：用 `project-alignment` 整理本地项目笔记

## 开源范围

ProjectOS Skills v0.1 聚焦：

- skill 工作流
- 文档协议
- PRD、UI MVP、system、execution、change、release 模板
- 公开路由逻辑

它保持在本地 skill 文件、本地项目文档和 agent 引导范围内。

## 这套系统最重要的逻辑

它不是让用户记住一整套复杂 skill tree。

它真正的逻辑是：

- 用 `project-guide` 作为唯一心智入口
- 用 `4` 个主要层承接不同阶段
- 用 `14` 个 internal skills 作为阶段内能力模块
- 用 `project-guide` 作为路由器
- 让系统根据项目状态，持续推荐下一个合理步骤

## 一句话总结

这套系统的正确使用方式不是：

- “我来选一堆 skill 里的哪一个”

而是：

- “我先说出项目想法”
- “系统先用 `project-guide` 判断现在在哪一阶段”
- “系统告诉我下一步该进入哪个 skill”

这才是这套 skill system 的核心使用逻辑。
