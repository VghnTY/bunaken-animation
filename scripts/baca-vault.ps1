# Baca seluruh catatan vault dalam satu output.
#
# Dipakai untuk menyuplai konteks ke AI di luar OpenCode (yang tidak otomatis
# membaca AGENTS.md). Output ditulis ke file teks di folder temp.

$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$vault = Join-Path $root 'Obsidian-Project-Animasi'
$out = Join-Path $env:TEMP 'warisan-bunaken-vault.txt'

if (-not (Test-Path $vault)) {
    Write-Error "Vault tidak ditemukan: $vault"
    exit 1
}

$order = '00-Proyek', '10-Cerita', '20-Produksi', '30-Aset', '40-Panduan', '50-Rapat', '90-Arsip'
$sb = New-Object System.Text.StringBuilder

foreach ($folder in $order) {
    $dir = Join-Path $vault $folder
    if (-not (Test-Path $dir)) { continue }
    Get-ChildItem $dir -Filter '*.md' -File | Sort-Object Name | ForEach-Object {
        [void]$sb.AppendLine("`n===== $folder/$($_.Name) =====")
        [void]$sb.AppendLine((Get-Content $_.FullName -Raw))
    }
}

$welcome = Join-Path $vault 'Welcome.md'
if (Test-Path $welcome) {
    $sb.Insert(0, "===== Welcome.md =====`n" + (Get-Content $welcome -Raw) + "`n")
}

$text = $sb.ToString()
Set-Content -Path $out -Value $text -Encoding utf8

Write-Host "Vault terbaca: $($text.Length) karakter"
Write-Host "Disimpan ke  : $out"
