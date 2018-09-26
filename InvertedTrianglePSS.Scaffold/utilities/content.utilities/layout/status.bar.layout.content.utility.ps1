function script:statusBarLayoutContent {

  return @"
`$script:statusBarLayout = Grid -ColumnCount 13 -RowCount 1 -Manual {

  `$statusBarComponent

} -Name statusBarLayout -Property `$statusBarProperty.layout
"@
}