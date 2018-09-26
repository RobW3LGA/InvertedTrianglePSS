function script:camelCase {
  Param([Parameter(Mandatory = $true)][String]$name)

  $names = $name.Split('.');
  [string]$objectName = $names[0];

  if ($names.length -gt 1) {
    for ($i = 1; $i -lt $names.length; $i++) {
      $objectName = $objectName + (titleCase $names[$i]);
    }
  }

  return $objectName
}