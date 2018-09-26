function script:rightPanelLayoutTestContent {

  return @"
`$script:rightPanelLayout = StackPanel {

  Label -Name PlaceHolder -Text 'This space for rent' -Property @{ horizontalAlignment = 'Center' }

} -Name rightPanelLayout -Property `$panelProperty.rightPanel.layout
"@
}