# bootstraps winget onto a system

Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe

# run winget update to prompt for microsoft store EULA
winget update
