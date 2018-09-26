function script:newFileComponentTestContent {
  Param([Parameter(Mandatory = $true)][string]$component)

  return @"
`$script:$($component)Component = WrapPanel {

  Label -Name $($component)Label -Property `$$($component)Property.label

} -Name $($component)Component -Property `$$($component)Property.component
"@
}