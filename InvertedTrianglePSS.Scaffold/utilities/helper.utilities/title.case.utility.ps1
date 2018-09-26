function script:titleCase {
  Param([Parameter(Mandatory = $true)][String]$name)

  return [System.Threading.Thread]::CurrentThread.CurrentCulture.TextInfo.ToTitleCase($name);
}