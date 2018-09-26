Add-Type -AssemblyName PresentationFramework;

$settings = @( Get-ChildItem -Path $PSScriptRoot\..\..\settings\*.setting.ps1 -Recurse -ErrorAction SilentlyContinue );
$utilities = @( Get-ChildItem -Path $PSScriptRoot\..\..\utilities\*.utility.ps1 -Recurse -ErrorAction SilentlyContinue );
$mocks = @( Get-ChildItem -Path $PSScriptRoot\..\..\tests\test.arrange\*.mock.ps1 -Recurse -ErrorAction SilentlyContinue );
$testContent = @( Get-ChildItem -Path $PSScriptRoot\..\..\tests\test.arrange\test.content\*.content.ps1 -Recurse -ErrorAction SilentlyContinue );

$importModules = @(

  $settings +
  $utilities +
  $mocks +
  $testContent
)

foreach ($import in $importModules) {

  try { . $import.fullname }
  catch { Write-Error -Message "ImportModules Error: $($PSItem.Exception.Message)" }
}