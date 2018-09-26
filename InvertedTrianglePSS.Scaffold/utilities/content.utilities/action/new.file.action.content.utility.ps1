function script:newFileActionContent {
  Param([Parameter(Mandatory = $true)][string]$component)

  return @"
`$script:$($component)Action = @{

  eventAction = { }
}
"@
}