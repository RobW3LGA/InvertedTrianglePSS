function script:newItem {
  Param(
    [Parameter(Mandatory = $false, ValueFromPipeline=$true)][string]$Value,
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Name,
    [Parameter(Mandatory = $true)][string]$ItemType
  )

  New-Item -Value $Value -Path $Path -Name $Name -ItemType $ItemType
}