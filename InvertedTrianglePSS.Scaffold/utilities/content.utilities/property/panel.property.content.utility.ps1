function script:panelPropertyContent {

  return @"
`$script:panelProperty = @{

  leftPanel  = @{

    layout = @{

      background       = `$theme.leftPanel.layout.background;
      width            = `$size.panel.layout.twoColumn.width;
      'DockPanel.Dock' = 'Left';
      orientation      = 'Vertical';
    }
  }
  rightPanel = @{

    layout = @{

      background       = `$theme.rightPanel.layout.background;
      width            = `$size.panel.layout.threeColumn.width;
      'DockPanel.Dock' = 'Right';
      orientation      = 'Vertical';
    }
  }
}
"@
}