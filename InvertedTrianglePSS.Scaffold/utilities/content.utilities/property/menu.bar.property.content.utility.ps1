function script:menuBarPropertyContent {

  return @"
`$script:menuBarProperty = @{

  layout    = @{

    background       = `$theme.menuBar.layout.background;
    height           = `$size.menuBar.layout.height;
    'DockPanel.Dock' = 'Top';
  }
  component = @{

    fontSize          = `$theme.menuBar.component.fontSize;
    foreground        = `$theme.menuBar.component.fontColor;
    background        = `$theme.menuBar.component.background;
    'Grid.Column'     = 0;
    'Grid.ColumnSpan' = 2;
    verticalAlignment = 'Center';
    margin            = '8,0,0,0';
  }
}
"@
}