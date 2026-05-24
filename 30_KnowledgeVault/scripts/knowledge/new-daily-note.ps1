param(
    [Parameter(Mandatory = $false)]
    [datetime]$Date = (Get-Date)
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$vaultRoot = Join-Path $repoRoot "vault"
$dailyRoot = Join-Path $vaultRoot "01_Daily"

if (-not (Test-Path -LiteralPath $dailyRoot)) {
    New-Item -ItemType Directory -Force -Path $dailyRoot | Out-Null
}

$day = $Date.ToString("yyyy-MM-dd")
$notePath = Join-Path $dailyRoot "$day.md"

if (Test-Path -LiteralPath $notePath) {
    Write-Output $notePath
    exit 0
}

$body = @"
---
type: daily
status: active
created: $day
updated: $day
tags:
  - daily
---

# $day

## Today

- 

## Captures

- 

## Decisions

- 

## Follow-Up

- [ ] 

## Links

- 
"@

Set-Content -LiteralPath $notePath -Value $body -Encoding UTF8
Write-Output $notePath
