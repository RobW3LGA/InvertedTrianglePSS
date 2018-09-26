function script:rootEventTestContent {

  return @"
`$script:rootEvent = @{

  loaded = `$rootAction.loaded;
}
"@
}