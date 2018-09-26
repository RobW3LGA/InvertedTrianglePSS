function private:installDependency {

  Write-Host "$($system.prompt) Installing...";
  Install-Module -Name $system.wpfBotName -RequiredVersion $system.wpfBotHighVersion -Force
}