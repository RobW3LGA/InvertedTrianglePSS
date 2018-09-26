$local:dependencyInstallText = @"

$($system.prompt) $($system.wpfBotName) version $($system.wpfBotHighVersion) is not yet installed. Install it? 
$($system.prompt) Note: Must be a $($system.prompt) (Admin) session.

"@

$local:dependencyReminderText = @"

$($system.prompt) Run 'Install-Module -Name $($system.wpfBotName) -RequiredVersion $($system.wpfBotHighVersion) -Force' to use this project.
"@

function script:dependencyVersionCheck {

  if (!(Get-InstalledModule $system.wpfBotName -AllVersions -ErrorAction SilentlyContinue | Where-Object { $_.Version -eq $system.wpfBotHighVersion })) {

    Write-Host $dependencyInstallText;
    $returned = Read-Host "$($system.prompt) (Y/N)";

    switch ($returned) {
      'y' { installDependency }
      'n' { Write-Host "$($system.prompt) Denied install $($dependencyReminderText)" }
      default { Write-Host "$($system.prompt) Skipped install $($dependencyReminderText)" }
    }
  }
}