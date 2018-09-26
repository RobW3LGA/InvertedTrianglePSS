function script:testArrangeTestContent {

  return @"
Add-Type -AssemblyName PresentationFramework;

`$models = @( Get-ChildItem -Path `$PSScriptRoot\..\..\models\*.model.ps1 -Recurse -ErrorAction SilentlyContinue );
`$settings = @( Get-ChildItem -Path `$PSScriptRoot\..\..\settings\*.setting.ps1 -Recurse -ErrorAction SilentlyContinue );
`$utilities = @( Get-ChildItem -Path `$PSScriptRoot\..\..\utilities\*.utility.ps1 -Recurse -ErrorAction SilentlyContinue );

`$importModules = @(

  `$models +
  `$settings +
  `$utilities
)

foreach (`$import in `$importModules) {

  try { . `$import.fullname }
  catch { Write-Error -Message "ImportModules Error: `$(`$PSItem.Exception.Message)" }
}
"@
}