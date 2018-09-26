function script:menuBarLayoutContent {

  return @"
`$script:menuBarLayout = Grid -ColumnCount 13 -RowCount 1 -Manual {

  `$menuBarComponent

} -Name menuBarLayout -Property `$menuBarProperty.layout
"@
}