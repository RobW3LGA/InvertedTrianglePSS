function script:menuBarActionTestContent {

  return @"
`$script:menuBarAction = @{

  fileMenu = @{

    exitButton = @{ click = { `$this.Window.Close() }}
  }
}
"@
}