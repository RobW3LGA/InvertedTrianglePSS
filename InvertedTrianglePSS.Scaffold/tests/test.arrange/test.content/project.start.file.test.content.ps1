function script:projectStartFileTestContent {

  return @"
Set-StrictMode -Version Latest;
Import-Module WPFBot3000 -RequiredVersion $($system.wpfBotHighVersion);

`$models = @( Get-ChildItem -Path `$PSScriptRoot\models\*.model.ps1 -Recurse -ErrorAction SilentlyContinue );
`$settings = @( Get-ChildItem -Path `$PSScriptRoot\settings\*.setting.ps1 -Recurse -ErrorAction SilentlyContinue );
`$utilities = @( Get-ChildItem -Path `$PSScriptRoot\utilities\*.utility.ps1 -Recurse -ErrorAction SilentlyContinue );
`$actions = @( Get-ChildItem -Path `$PSScriptRoot\actions\*.action.ps1 -Recurse -ErrorAction SilentlyContinue );
`$events = @( Get-ChildItem -Path `$PSScriptRoot\events\*.event.ps1 -Recurse -ErrorAction SilentlyContinue );
`$properties = @( Get-ChildItem -Path `$PSScriptRoot\properties\*.property.ps1 -Recurse -ErrorAction SilentlyContinue );
`$components = @( Get-ChildItem -Path `$PSScriptRoot\components\*.component.ps1 -Recurse -ErrorAction SilentlyContinue );
`$layout = @( Get-ChildItem -Path `$PSScriptRoot\layouts\*.layout.ps1 -Recurse -ErrorAction SilentlyContinue );

`$importModules = @(
  `$models +
  `$settings +
  `$utilities +
  `$actions +
  `$events +
  `$properties +
  `$components +
  `$layout
)

foreach (`$import in `$importModules) {
  try { . `$import.fullname }
  catch { Write-Error -Message "Caught at Import Modules: `$(`$PSItem.Exception.Message)" }
}
"@
}