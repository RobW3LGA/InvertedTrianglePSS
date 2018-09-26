function script:consoleOutputUtilityTestContent {

  return @"
function script:consoleOutput {
  Param([Parameter(Mandatory = `$true)][string]`$output)

  Write-Host `$output
}
"@
}