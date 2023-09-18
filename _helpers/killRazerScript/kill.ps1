Get-Process | Where-Object { $_.Name -like 'razer*' } | Stop-Process -Force
Get-Process | Where-Object { $_.Name -like 'GameManagerService*' } | Stop-Process -Force
# Get-Process | Where-Object { $_.Name -like 'RzSDKService*' } | Stop-Process -Force
# Get-Process | Where-Object { $_.Name -like 'RzSDKServer*' } | Stop-Process -Force

& "C:\Program Files (x86)\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\Razer Synapse 3.exe" /run 

# Write-Host -NoNewLine 'Press any key to continue...';
# $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');