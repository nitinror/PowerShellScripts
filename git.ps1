# Set GitHub repository details

$repositoryUrl = "https://github.com/nitinror/Test"  
$destinationPath = "C:\Users\Nitin ror\Documents\Powershell\New folder"  

# Check if Git is installed
if (-not (Test-Path Git)) {
    Write-Host "Git is not installed. Please install Git and run the script again."
    return
}

# Check if the destination path exists
if (-not (Test-Path $destinationPath -PathType Container)) {
    Write-Host "Creating destination directory: $destinationPath"
    New-Item -ItemType Directory -Force -Path $destinationPath
}

# Clone the GitHub repository
Write-Host "Cloning repository from $repositoryUrl to $destinationPath"
git clone $repositoryUrl $destinationPath

Write-Host "Repository cloned successfully."
