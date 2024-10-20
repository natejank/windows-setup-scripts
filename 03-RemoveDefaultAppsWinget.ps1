# uninstalls more apps, this time using winget

$applicationList = @(
    @{name = "Microsoft.OneDrive"},
    @{name = "Microsoft.Teams"},
    @{name = "Microsoft.DevHome"},
    @{name = "Microsoft.Todos_8wekyb3d8bbwe"},
    @{name = "Microsoft.Windows.Photos_8wekyb3d8bbwe"},
    @{name = "9NBLGGH5R558"}, # microsoft to do
    @{name = "Microsoft.Xbox.TCUI_8wekyb3d8bbwe"},
    @{name = "Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe"},
    @{name = "Microsoft.YourPhone_8wekyb3d8bbwe"},
    @{name = "Microsoft.WindowsAlarms_8wekyb3d8bbwe"},
    @{name = "Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe"},
    @{name = "Microsoft.OutlookForWindows_8wekyb3d8bbwe"},
    @{name = "Microsoft.GamingApp_8wekyb3d8bbwe"}, # xbox
    @{name = "Microsoft.Copilot_8wekyb3d8bbwe"},
    @{name = "Microsoft.BingSearch_8wekyb3d8bbwe"},
    @{name = "Clipchamp.Clipchamp_yxz26nhyzhsrt"}
);

Foreach ($app in $applicationList) {
    $listApp = winget list --exact -q $app.name;
    if ([String]::Join("", $listApp).Contains($app.name)) {
        Write-Host "Uninstalling: " $app.name;
        winget uninstall $app.name;
    } else {
        Write-Host "Skipping " $app.name "(Not present)";
    }
}