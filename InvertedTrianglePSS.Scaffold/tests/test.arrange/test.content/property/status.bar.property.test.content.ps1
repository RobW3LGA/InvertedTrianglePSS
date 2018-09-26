function script:statusBarPropertyTestContent {

  return @"
`$script:statusBarProperty = @{

  layout            = @{

    background       = `$theme.statusBar.layout.background;
    height           = `$size.statusBar.layout.height;
    'DockPanel.Dock' = 'Bottom';
  }
  component         = @{

    fontSize          = `$theme.statusBar.component.fontSize;
    background        = `$theme.statusBar.component.background;
    'Grid.Column'     = 0;
    'Grid.ColumnSpan' = 2;
    margin            = '8,0,0,0';
  }
  systemStatusLabel = @{

    content    = `$view.statusBar.systemStatus.label;
    foreground = `$theme.statusBar.component.fontColor;
  }
  systemStatusText  = @{

    content    = `$view.statusBar.systemStatus.loading;
    foreground = `$theme.statusBar.component.fontColor;
  }
}
"@
}