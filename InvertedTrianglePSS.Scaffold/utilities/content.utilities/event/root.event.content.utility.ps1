function script:rootEventContent {

  return @"
`$script:rootEvent = @{

  loaded = `$rootAction.loaded;
}
"@
}