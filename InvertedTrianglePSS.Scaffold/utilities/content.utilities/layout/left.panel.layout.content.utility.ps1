function script:leftPanelLayoutContent {

  return @"
`$script:leftPanelLayout = StackPanel {

  Label -Name PlaceHolder -Text 'Left.Panel' -Property @{ horizontalAlignment = 'Center' }

} -Name leftPanelLayout -Property `$panelProperty.leftPanel.layout
"@
}