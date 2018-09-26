function script:menuBarActionContent {

  return @"
`$script:menuBarAction = @{

  fileMenu = @{

    exitButton = @{ click = { `$this.Window.Close() }}
  }
}
"@
}