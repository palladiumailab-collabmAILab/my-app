param(
    [Parameter(Mandatory = $true)]
    [string]$Url,

    [Parameter(Mandatory = $false)]
    [string]$Title = "url capture",

    [Parameter(Mandatory = $false)]
    [string]$WhySaved = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$vaultRoot = Join-Path $repoRoot "vault"
$urlRoot = Join-Path $vaultRoot "00_Inbox\URLs"

if (-not (Test-Path -LiteralPath $urlRoot)) {
    New-Item -ItemType Directory -Force -Path $urlRoot | Out-Null
}

$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$created = Get-Date -Format "yyyy-MM-ddTHH:mm:ssK"
$slug = $Title.ToLowerInvariant() -replace '[^\p{L}\p{Nd}]+', '-'
$slug = $slug.Trim("-")

if ([string]::IsNullOrWhiteSpace($slug)) {
    $slug = "url"
}

$notePath = Join-Path $urlRoot "$stamp-$slug.md"

$body = @"
---
type: inbox
status: unprocessed
source: url-drop
created: $created
updated: $created
tags:
  - inbox
  - capture/url
---

# $Title

## URL

$Url

## Why Saved

$WhySaved

## Notes


## AI Request

- [ ] Identify what this source is about.
- [ ] Create or update a resource note if useful.
- [ ] Extract any durable ideas into permanent notes.
- [ ] Flag anything that needs verification.
"@

Set-Content -LiteralPath $notePath -Value $body -Encoding UTF8
Write-Output $notePath
