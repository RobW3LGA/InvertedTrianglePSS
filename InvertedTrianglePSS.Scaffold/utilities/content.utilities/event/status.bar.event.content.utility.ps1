function script:statusBarEventContent {

  return @"
`$script:statusBarEvent = @{

  eventAction = `$statusBarAction.eventAction;
}
"@
}