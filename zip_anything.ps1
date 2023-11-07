param (
    [Parameter(Mandatory=$true)]
    [string]$FileName
)

$currentPath = Get-Location
$filePath = Join-Path $currentPath $FileName

$zipFileName = $FileName -replace '\..+$', '.zip'

Compress-Archive -Path $filePath -DestinationPath $zipFileName
