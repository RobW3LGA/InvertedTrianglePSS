function script:pluralize {
  Param([Parameter(Mandatory = $true)][String]$name)

  if ($name.EndsWith('y')) { return $name.Replace('y', 'ies') }
  else { return $name + 's' }
}