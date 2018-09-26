function script:menuBarEventContent {

  return @"
`$script:menuBarEvent = @{

  fileMenu = `$menuBarAction.fileMenu;
}
"@
}