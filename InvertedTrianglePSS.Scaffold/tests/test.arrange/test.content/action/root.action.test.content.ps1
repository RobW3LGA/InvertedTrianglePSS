function script:rootActionTestContent {

  return @"
`$script:rootAction = @{

  loaded = {

    consoleOutput `$view.statusBar.systemStatus.loading;
    `$systemStatusText.content = `$view.statusBar.systemStatus.ready;
  }
}
"@
}