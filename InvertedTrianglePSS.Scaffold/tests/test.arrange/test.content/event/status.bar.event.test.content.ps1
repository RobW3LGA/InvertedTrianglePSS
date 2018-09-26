function script:statusBarEventTestContent {

  return @"
`$script:statusBarEvent = @{

  eventAction = `$statusBarAction.eventAction;
}
"@
}