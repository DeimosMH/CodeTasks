Get-Process | Where-Object { $_.Name -like 'acrobat*' } | Stop-Process -Force
Get-Process | Where-Object { $_.Name -like 'acrocef*' } | Stop-Process -Force
Get-Process | Where-Object { $_.Name -like 'cefsharp*' } | Stop-Process -Force
Get-Process | Where-Object { $_.Name -like 'vmplayer*' } | Stop-Process -Force
Get-Process | Where-Object { $_.Name -like 'wslservice*' } | Stop-Process -Force
Get-Process | Where-Object { $_.Name -like 'updatesvc*' } | Stop-Process -Force
# Get-Process | Where-Object { $_.Name -like 'razer*' } | Stop-Process -Force
# Get-Process | Where-Object { $_.Name -like 'GameManagerService*' } | Stop-Process -Force

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');