# Requires -Version 3.0

# Function to download Python installer
Function Download-PythonInstaller {
    param (
        [string]$Url = "https://www.python.org/ftp/python/3.10.4/python-3.10.4-amd64.exe",
        [string]$OutFile = "python_installer.exe"
    )

    Invoke-WebRequest -Uri $Url -OutFile $OutFile
    return $OutFile
}

# Function to install Python
Function Install-Python {
    param (
        [string]$InstallerPath
    )

    Start-Process -FilePath $InstallerPath -Args "/quiet InstallAllUsers=1 PrependPath=1" -Wait -PassThru
}

# Check if Python is installed
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "Python is not installed. Downloading and installing Python..."
    $installer = Download-PythonInstaller
    Install-Python -InstallerPath $installer
} else {
    Write-Host "Python is already installed."
}

# Install required Python packages
Write-Host "Installing required Python packages..."
Start-Process python -ArgumentList "-m pip install -r requirements.txt" -Wait

