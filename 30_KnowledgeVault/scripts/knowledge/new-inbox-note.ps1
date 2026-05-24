param(
    [Parameter(Mandatory = $false)]
    [string]$Title = "quick capture",

    [Parameter(Mandatory = $false)]
    [string]$Content = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$vaultRoot = Join-Path $repoRoot "vault"
$inboxRoot = Join-Path $vaultRoot "00_Inbox"

if (-not (Test-Path -LiteralPath $inboxRoot)) {
    New-Item -ItemType Directory -Force -Path $inboxRoot | Out-Null
}

$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$created = Get-Date -Format "yyyy-MM-ddTHH:mm:ssK"
$slug = $Title.ToLowerInvariant() -replace '[^\p{L}\p{Nd}]+', '-'
$slug = $slug.Trim("-")

if ([string]::IsNullOrWhiteSpace($slug)) {
    $slug = "capture"
}

$notePath = Join-Path $inboxRoot "$stamp-$slug.md"

$body = @"
---
type: inbox
status: unprocessed
created: $created
updated: $created
source: quick-capture
tags:
  - inbox
---

# $Title

## Raw Capture

$Content

## AI Triage Request

- [ ] Extract the main points.
- [ ] Identify tasks, decisions, and open questions.
- [ ] Suggest destination notes.
- [ ] Add links to related notes.
"@

Set-Content -LiteralPath $notePath -Value $body -Encoding UTF8
Write-Output $notePath
