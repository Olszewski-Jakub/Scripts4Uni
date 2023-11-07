param (
    [Parameter(Mandatory=$true)]
    [string]$FileName
)

$currentPath = Get-Location
$word_app = New-Object -ComObject Word.Application

$filePath = Join-Path $currentPath $FileName
$document = $word_app.Documents.Open($filePath)
$pdf_filename = Join-Path $currentPath ($FileName -replace '\.docx?', '.pdf')
$wdFormatPdf = 17
$document.SaveAs([System.IO.Path]::GetFullPath($pdf_filename), [ref] $wdFormatPdf)
$document.Close()

$word_app.Quit()
Write-Host "Word document $FileName has been succesfully converted to pdf."
