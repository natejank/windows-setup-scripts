# install select software using winget

$apps = @(
    @{name = "7zip.7zip"},
    @{name = "Git.Git"},
    @{name = "Google.Chrome"},
    @{name = "Microsoft.VisualStudioCode"},
    @{name = "Microsoft.WindowsTerminal"},
    @{name = "Mozilla.Firefox"},
    @{name = "SlackTechnologies.Slack"}

);
Foreach ($app in $apps) {
    $listApp = winget list --exact -q $app.name;
    if (![String]::Join("", $listApp).Contains($app.name)) {
        Write-Host "Installing: " $app.name;
        winget install -e -h --accept-source-agreements --accept-package-agreements --id $app.name;
    }
    else {
        Write-Host "Skipping: " $app.name " (already installed)";
    }
}