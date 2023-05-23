$webContent = Invoke-WebRequest -Uri 'https://www.msys2.org/' -UseBasicParsing
$matches = $webContent | Select-String -Pattern 'https://github.com/msys2/msys2-installer/releases/download/\S+/msys2-x86_64-\S+.exe' -AllMatches | ForEach-Object { $_.Matches } | ForEach-Object { $_.Value }
$latestMSYS2Installer = $matches | Select-Object -First 1
$latestMSYS2Installer