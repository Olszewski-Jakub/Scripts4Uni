# Get the current directory
$currentLocation = Get-Location

# Prompt user for file name
$fileName = Read-Host "Please enter the name of the Word document (without extension):"

# Create a Word application object
$wordApp = New-Object -ComObject Word.Application

# Add a new Word document
$doc = $wordApp.Documents.Add()

# Save the document in the current directory
$doc.SaveAs("$currentLocation\$fileName.docx")

# Close the Word application
$wordApp.Quit()

Write-Host "Word document '$fileName.docx' has been created in the current location."

# Open the created Word document
Invoke-Item "$currentLocation\$fileName.docx"
