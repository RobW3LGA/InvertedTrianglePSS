function script:menuBarComponentTestContent {

  return @"
`$script:menuBarComponent = Menu {

  MenuItem `$view.menuBar.fileMenu.text -Contents {

    Separator

    MenuItem `$view.menuBar.fileMenu.exitButton.text -Action {} |
      HandlesEvent Click `$menuBarEvent.fileMenu.exitButton.click

  } -Name fileMenu

} -Name menuBarComponent -Property `$menuBarProperty.component
"@
}