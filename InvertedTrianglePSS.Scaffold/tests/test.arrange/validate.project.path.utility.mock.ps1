function script:validateProjectPath {
  Param(
    [Parameter(Mandatory = $true)][string]$testForPath,
    [Parameter(Mandatory = $true)][string]$testForProject,
    [Parameter(Mandatory = $false)][bool]$returnNull = $false
  )

  if ($returnNull) { return $null }
  else { return 'NotNull' }
}