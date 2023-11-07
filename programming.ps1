# Get the current folder name
$folderName = (Get-Item -Path ".\").Name

# Create a new folder with the current folder name if it doesn't exist
if (-not (Test-Path -Path $folderName -PathType Container)) {
    New-Item -ItemType Directory -Name $folderName
}

# Copy the main.c file and rename it to the folder name
Copy-Item ".\main.c" ".\$folderName\$folderName.c"

# Create a .doc file with the same name if it doesn't exist
$docFileName = "$folderName.doc"
if (-not (Test-Path -Path $docFileName -PathType Leaf)) {
    New-Item -ItemType File -Name $docFileName -Value (Get-Content ".\$folderName\$folderName.c")
}

# Copy the code from main.c to the .doc file
Get-Content ".\$folderName\$folderName.c" | Set-Content ".\$folderName\$folderName.doc"
