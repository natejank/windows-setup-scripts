# uninstalls more apps, this time using winget

$applicationList = @(
    @{name = "Microsoft OneDrive"},
    @{name = "Microsoft Teams"},
    @{name = "Microsoft Photos"},
    @{name = "Xbox TCUI"},
    @{name = "Windows Alarms & Clock"},
    @{name = "Microsoft Copilot"},
    @{name = "Mail and Calendar"},
    @{name = "Your Phone"},
    @{name = "Xbox Game Speech Window"},
    @{name = "Xbox Identity Provider"},
    @{name = "Xbox Game Bar"},
    @{name = "Xbox Game Bar Plugin"},
    @{name = "Xbox"},
    @{name = "Microsoft Pay"},
    @{name = "OneNote"},
    @{name = "Paint 3D"},
    @{name = "Cortana"},
    @{name = "Movies & TV"},
    @{name = "Groove Music"},
    @{name = "Windows Voice Recorder"},
    @{name = "Windows Maps"},
    @{name = "Skype"},
    @{name = "Microsoft People"},
    @{name = "Mixed Reality Portal"},
    @{name = "Office"},
    @{name = "Microsoft Solitaire Collection"},
    @{name = "3D Viewer"},
    @{name = "MSN Weather"}

    # todo what is the actual name for these
    @{name = "Microsoft DevHome"},
    @{name = "Microsoft To Dos"},
    @{name = "9NBLGGH5R558"}, # microsoft to do
    @{name = "Microsoft.PowerAutomateDesktop"},
    @{name = "Microsoft.OutlookForWindows"},
    @{name = "Microsoft.GamingApp"}, # xbox
    @{name = "Microsoft.BingSearch"},
    @{name = "Clipchamp"}
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