function script:validateProjectPath {
  Param(
    [Parameter(Mandatory = $true)][string]$testForPath,
    [Parameter(Mandatory = $true)][string]$testForProject
  )

  return Get-Content $testForPath -ErrorAction SilentlyContinue | Select-String $testForProject;
}