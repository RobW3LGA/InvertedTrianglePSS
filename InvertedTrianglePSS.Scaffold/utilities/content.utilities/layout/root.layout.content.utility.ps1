function script:rootLayoutContent {

  return @"
Window {

  DockPanel {

    `$menuBarLayout

    `$statusBarLayout

    `$leftPanelLayout

    `$rightPanelLayout

  } -Name rootLayout -Property `$rootProperty.layout |
      HandlesEvent Loaded `$rootEvent.loaded

} -Property `$rootProperty.window -ShowForValue -ShowGridLines
"@
}