function script:menuBarEventTestContent {

  return @"
`$script:menuBarEvent = @{

  fileMenu = `$menuBarAction.fileMenu;
}
"@
}