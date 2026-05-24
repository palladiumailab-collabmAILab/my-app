# Owner Codex Rules
> オーナー向け Codex 作業ルール

This file is the authoritative source for project-owner-specific rules when
working with Codex in this repository.
> このファイルは、このリポジトリで Codex と作業するときの、プロジェクトオーナー固有ルールの正本です。

It must stay separate from downloaded ECC source files.
> このファイルは、ダウンロード由来の ECC ソースファイルとは分離して管理します。

Do not place these owner-specific rules in `00_Rules/ecc/`.
> これらのオーナー固有ルールを `00_Rules/ecc/` には置かないでください。

## Instruction Priority
> 指示の優先順位

When instructions conflict, use this order:
> 指示が衝突した場合は、次の順番で判断します。

1. The user's latest explicit instruction.
   > ユーザーの最新の明示的な指示。
2. Downloaded ECC source rule files.
   > ダウンロード済みの ECC ソースルールファイル。
3. This `00_Rules/owner/owner-codex-rules.md` file.
   > この `00_Rules/owner/owner-codex-rules.md` ファイル。
4. Project-specific product, architecture, UI, API, and test documents.
   > プロジェクト固有のプロダクト、アーキテクチャ、UI、API、テスト文書。
5. General best practices.
   > 一般的なベストプラクティス。

Owner-specific rules refine project work without rewriting, weakening, or
silently overriding downloaded ECC source rules.
> オーナー固有ルールは、ダウンロード済み ECC ソースルールを書き換えたり、弱めたり、黙って上書きしたりせずに、プロジェクト作業を補足・調整するものです。

Do not restate ECC-owned rules here. Testing method, coding style, security
checks, general reviewability, and conventional commit rules should stay in the
downloaded ECC rule files unless this project needs a stricter owner-specific
rule.
> ECC が管理するルールはここに重ねて書かないでください。テスト手法、コーディングスタイル、セキュリティチェック、一般的なレビューしやすさ、conventional commit ルールは、このプロジェクト固有のより厳しいルールが必要な場合を除き、ダウンロード済み ECC ルールファイルに任せます。

## Rule Change Governance
> ルール変更の管理

Do not delete, weaken, generalize, or replace existing owner or project rules
silently.
> 既存のオーナールールやプロジェクトルールを、黙って削除・弱体化・一般化・置き換えしないでください。

When changing, retiring, generalizing, or replacing a rule, record what changed
and why in this file, the relevant design document, an ADR, or the decision log.
> ルールを変更・廃止・一般化・置き換えする場合は、何をなぜ変えたのかを、このファイル、関連する設計文書、ADR、または decision log に記録してください。

When changing this file, report what changed and why.
> このファイルを変更した場合は、何をなぜ変更したのかを報告してください。

## Safety And Confirmation
> 安全確認と事前確認

For security, privacy, destructive operations, dependency additions, major
design changes, and pushes, pause and confirm when the risk or consequence is
not obvious.
> セキュリティ、プライバシー、破壊的操作、依存関係の追加、大きな設計変更、push については、リスクや影響が明らかでない場合は一度止まり、確認してください。

Ask before taking actions with non-obvious consequences.
> 影響が明らかではない行動を取る前に確認してください。

Make reasonable assumptions for low-risk work and state them in the handoff.
> 低リスクの作業では合理的な前提を置いて進め、引き渡し時にその前提を明記してください。

Treat undocumented behavior as provisional.
> 文書化されていない挙動は暫定的なものとして扱ってください。

If implementation depends on undocumented behavior, document the assumption
before coding.
> 実装が文書化されていない挙動に依存する場合は、コーディング前にその前提を文書化してください。

## Development Environment
> 開発環境

The primary development language is Python.
> 主要な開発言語は Python です。

Prefer Docker for development and test execution to avoid host environment
drift.
> ホスト環境の差異を避けるため、開発とテスト実行には Docker を優先してください。

Do not install Python dependencies directly on the host for routine project
work.
> 通常のプロジェクト作業では、Python 依存関係をホスト環境へ直接インストールしないでください。

Use repository-local tooling first.
> まずリポジトリ内のツールを使用してください。

## Specification Documentation Before Code
> コード作成前の仕様文書化

Before generating or changing application code, Codex must create or update the
specification documents that affect the requested change, then stop for user
review unless the user explicitly asks to skip documentation.
> アプリケーションコードを生成または変更する前に、Codex は依頼された変更に影響する仕様文書を作成または更新し、ユーザーが明示的に文書化を省略するよう依頼しない限り、レビューのために停止してください。

For each milestone, prepare a complete design-document baseline before
manufacturing or implementation begins.
> 各マイルストーンでは、製造または実装を始める前に、設計書一式のベースラインを揃えてください。

The baseline should be waterfall-like: requirements, external design, internal
design, interface definitions, data design, UML or equivalent diagrams, and test
design should be reviewable as a set before code is generated.
> ベースラインはウォーターフォール開発に近い形とし、要件、外部設計、内部設計、インターフェース定義、データ設計、UML または同等の図、テスト設計を、コード生成前に一式としてレビューできる状態にしてください。

Do not create every possible document mechanically. Create the full set needed
to remove ambiguity for the milestone, and explicitly mark intentionally
deferred documents as out of scope with a reason.
> すべての文書を機械的に作る必要はありません。対象マイルストーンの曖昧さをなくすために必要な一式を作成し、意図的に後回しにする文書は理由付きで対象外として明記してください。

Use existing active documents first.
> まず既存のアクティブな文書を使用してください。

If none exist, copy the minimum useful templates from `10_Specifications/templates/` into
the recommended app documentation structure described in
`90_ProjectDocs/project/documentation-map.md`.
> 既存文書がない場合は、`10_Specifications/templates/` から必要最小限の有用なテンプレートをコピーし、`90_ProjectDocs/project/documentation-map.md` に記載された推奨アプリ文書構成へ配置してください。

The review gate before code generation is:
> コード生成前のレビューゲートは次の通りです。

1. Identify the affected specification documents.
   > 影響を受ける仕様文書を特定します。
2. Create or update those documents before implementation.
   > 実装前に、それらの文書を作成または更新します。
3. Confirm that the design-document baseline is complete enough for
   manufacturing.
   > 設計書一式のベースラインが、製造に進める程度に十分揃っていることを確認します。
4. Summarize what changed, what remains uncertain, and which documents were
   intentionally deferred.
   > 何が変わったか、何がまだ不確実か、どの文書を意図的に後回しにしたかを要約します。
5. Wait for user approval before generating or changing application code.
   > アプリケーションコードを生成または変更する前に、ユーザーの承認を待ちます。

Exceptions:
> 例外。

- Small documentation-only changes may proceed without an additional review
  gate.
  > 小さな文書のみの変更は、追加のレビューゲートなしで進めても構いません。
- Tiny mechanical code fixes may proceed when the user explicitly says no
  specification update is needed.
  > ユーザーが仕様更新不要と明示した場合、ごく小さな機械的コード修正は進めても構いません。
- Emergency fixes may proceed first, but Codex must document the decision and
  follow up with the missing specification updates.
  > 緊急修正は先に進めても構いませんが、Codex はその判断を文書化し、不足している仕様更新を後で補う必要があります。

## Documentation Quality
> 文書品質

Write documents in a structured, consultant/SIer-like style.
> 文書は、コンサルタントまたは SIer らしい構造化されたスタイルで書いてください。

Separate background, purpose, scope, assumptions, non-scope, requirements,
design, risks, unresolved questions, and acceptance criteria.
> 背景、目的、スコープ、前提、対象外、要件、設計、リスク、未解決事項、受け入れ条件を分けて記述してください。

Optimize documents for preventing misunderstanding, not merely recording
specifications.
> 文書は、単に仕様を記録するだけでなく、誤解を防ぐことを重視して作成してください。

Use diagrams, tables, examples, state transitions, and sample data when plain
text could be ambiguous.
> 平文だけでは曖昧になりそうな場合は、図、表、例、状態遷移、サンプルデータを使ってください。

Record why decisions were made, not only what was decided.
> 何を決めたかだけでなく、なぜその決定をしたのかも記録してください。

Record important product, architecture, privacy, and UX decisions in an ADR or
decision log instead of leaving them only in chat.
> 重要なプロダクト、アーキテクチャ、プライバシー、UX の決定は、チャットだけに残さず ADR または decision log に記録してください。

## Documentation Set
> 文書セット

Prioritize documents that reduce future confusion:
> 将来の混乱を減らす文書を優先してください。

- Glossary
  > 用語集。
- Scope definition
  > スコープ定義。
- Use case list
  > ユースケース一覧。
- Screen specification
  > 画面仕様。
- State transition diagram
  > 状態遷移図。
- Acceptance criteria
  > 受け入れ条件。
- ADRs
  > ADR。
- Decision log
  > 意思決定ログ。

Add these when they become relevant:
> 関連が出てきたら、次の文書を追加してください。

- OpenAPI specification for APIs
  > API の OpenAPI 仕様。
- ER diagram and data dictionary for persistent data
  > 永続化データの ER 図とデータ辞書。
- Test specification and test case list for broader test coverage
  > より広いテストカバレッジのためのテスト仕様とテストケース一覧。
- Runbook or release procedure before public operation
  > 公開運用前の runbook またはリリース手順。

Usually defer these until the project needs them:
> 通常は、プロジェクトで必要になるまで次の文書は後回しにしてください。

- BPMN
  > BPMN。
- Full operations design
  > 完全な運用設計。
- Monitoring design
  > 監視設計。
- KPI definition
  > KPI 定義。
- Change request workflow
  > 変更要求ワークフロー。

## Preferred File Formats
> 推奨ファイル形式

Use the most standard and maintainable format for each document type:
> 各文書タイプには、最も標準的で保守しやすい形式を使用してください。

| Document type | Preferred format |
| --- | --- |
| Narrative specifications | Markdown |
| Glossary | Markdown |
| Scope definition | Markdown |
| Use cases | Markdown |
| Screen specifications | Markdown |
| Wireframes and visual design | Figma, referenced from Markdown |
| Screen transitions | Mermaid in Markdown |
| State transitions | Mermaid in Markdown |
| UML | Mermaid first, PlantUML when stricter UML is needed |
| C4 model | Mermaid or PlantUML |
| ER diagram | Mermaid ERD first, DBML when database design grows |
| Data dictionary | Markdown, CSV if tables become large |
| Code definitions | YAML when machine-readable, Markdown when explanatory |
| API specification | OpenAPI YAML |
| Event specification | AsyncAPI YAML |
| ADR | Markdown |
| Decision log | Markdown |
| Test specification | Markdown |
| Test cases | Markdown for small sets, CSV for large sets |
| Issues | GitHub Issues |

> 上の表は、文書タイプごとの推奨形式を示します。
> - Narrative specifications: 叙述的な仕様書。推奨形式は Markdown。
> - Glossary: 用語集。推奨形式は Markdown。
> - Scope definition: スコープ定義。推奨形式は Markdown。
> - Use cases: ユースケース。推奨形式は Markdown。
> - Screen specifications: 画面仕様。推奨形式は Markdown。
> - Wireframes and visual design: ワイヤーフレームとビジュアルデザイン。推奨形式は Figma、Markdown から参照。
> - Screen transitions: 画面遷移。推奨形式は Markdown 内の Mermaid。
> - State transitions: 状態遷移。推奨形式は Markdown 内の Mermaid。
> - UML: UML。まず Mermaid を使い、より厳密な UML が必要な場合は PlantUML。
> - C4 model: C4 モデル。推奨形式は Mermaid または PlantUML。
> - ER diagram: ER 図。まず Mermaid ERD を使い、データベース設計が大きくなったら DBML。
> - Data dictionary: データ辞書。推奨形式は Markdown、表が大きくなった場合は CSV。
> - Code definitions: コード定義。機械可読が必要な場合は YAML、説明重視の場合は Markdown。
> - API specification: API 仕様。推奨形式は OpenAPI YAML。
> - Event specification: イベント仕様。推奨形式は AsyncAPI YAML。
> - ADR: ADR。推奨形式は Markdown。
> - Decision log: 意思決定ログ。推奨形式は Markdown。
> - Test specification: テスト仕様。推奨形式は Markdown。
> - Test cases: テストケース。小規模なら Markdown、大規模なら CSV。
> - Issues: Issue 管理。推奨形式は GitHub Issues。

## Codex Working Style
> Codex の作業スタイル

Work one milestone at a time.
> 一度に 1 つのマイルストーンを進めてください。

Keep the user informed before meaningful edits.
> 意味のある編集を行う前に、ユーザーへ状況を伝えてください。

Codex should inspect relevant rules and this file before meaningful work.
> Codex は意味のある作業を始める前に、関連ルールとこのファイルを確認してください。

Codex should briefly explain important assumptions and non-obvious choices
before implementation.
> Codex は実装前に、重要な前提や自明ではない選択を簡潔に説明してください。

For UI work, verify visually when a local app is available.
> UI 作業では、ローカルアプリが利用できる場合は視覚的に確認してください。

For work that changes existing files or behavior, prefer creating a dedicated
`codex/` branch before editing so the work can be abandoned or reviewed without
disturbing `main`.
> 既存ファイルや挙動を変更する作業では、編集前に専用の `codex/` ブランチを作ることを優先してください。これにより、`main` を乱さずに作業を破棄またはレビューできます。

Small documentation-only preference updates may be committed directly to the
current branch when the user asks for the change, but Codex must report the
commit hash so it can be reverted.
> 小さな文書のみの希望事項更新は、ユーザーが変更を依頼した場合、現在のブランチへ直接コミットしても構いません。ただし Codex は、後で戻せるようにコミットハッシュを報告する必要があります。

When Codex creates a commit for requested work, push it to the appropriate
remote branch as part of the same task unless the user says not to.
> Codex が依頼作業のコミットを作成した場合、ユーザーがしないよう指示しない限り、同じタスクの一部として適切なリモートブランチへ push してください。
