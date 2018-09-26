function script:newFileEventContent {
  Param([Parameter(Mandatory = $true)][string]$component)

  return @"
`$script:$($component)Event = @{

  eventAction = `$$($component)Action.eventAction;
}
"@
}