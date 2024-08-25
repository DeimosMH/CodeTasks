# Download the auto-install.js script
$autoInstallJsUrl = "https://raw.githubusercontent.com/msys2/msys2-installer/master/auto-install.js"
$autoInstallJsFile = "auto-install.js"
Invoke-WebRequest -Uri $autoInstallJsUrl -OutFile $autoInstallJsFile

$msys2InstallerFile = "msys2.exe"

# Run the MSYS2 installer with the --script option
Start-Process -FilePath $msys2InstallerFile -ArgumentList "--script $autoInstallJsFile" -Wait

Write-Host "MSYS2 installation complete"