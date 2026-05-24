param(
    [Parameter(Mandatory = $false)]
    [ValidateSet("siri", "gemini", "web-llm", "manual", "unknown")]
    [string]$Source = "unknown",

    [Parameter(Mandatory = $false)]
    [string]$Title = "quick capture",

    [Parameter(Mandatory = $false)]
    [string]$Content = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$vaultRoot = Join-Path $repoRoot "vault"
$sourceFolders = @{
    "siri" = "Siri"
    "gemini" = "Gemini"
    "web-llm" = "WebLLM"
    "manual" = "Manual"
    "unknown" = ""
}

$folderName = $sourceFolders[$Source]
$inboxRoot = Join-Path $vaultRoot "00_Inbox"
if (-not [string]::IsNullOrWhiteSpace($folderName)) {
    $inboxRoot = Join-Path $inboxRoot $folderName
}

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
source: $Source
created: $created
updated: $created
tags:
  - inbox
  - capture/$Source
---

# $Title

## Raw Capture

$Content

## Important

- 

## Tasks

- [ ] 

## Questions

- 

## AI Request

- [ ] Extract facts, decisions, tasks, and open questions.
- [ ] Move durable information to the right destination notes.
- [ ] Preserve this raw note unless it is clearly safe to archive.
"@

Set-Content -LiteralPath $notePath -Value $body -Encoding UTF8
Write-Output $notePath
