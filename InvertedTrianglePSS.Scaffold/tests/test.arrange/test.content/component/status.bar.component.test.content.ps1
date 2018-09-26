function script:statusBarComponentTestContent {

  return @"
`$script:statusBarComponent = StatusBar {

  Label -Name systemStatusLabel -Property `$statusBarProperty.systemStatusLabel

  Label -Name systemStatusText -Property `$statusBarProperty.systemStatusText

} -Name statusBarComponent -Property `$statusBarProperty.component
"@
}