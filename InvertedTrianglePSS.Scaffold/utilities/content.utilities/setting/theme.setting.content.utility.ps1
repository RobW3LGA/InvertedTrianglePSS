function script:themeSettingContent {

  return @"
`$private:_theme = @{

  primary   = @{

    fontColor  = '#657585';
    background = '#A5A9AD';
  }
  accent    = @{

    fontColor  = '#000000';
    background = '#657585';
  }
  alternate = @{

    fontColor  = '#FFFFFF';
    background = '#75797E';
  }
  base      = @{

    fontColor  = '#303030';
    background = '#FFFFFF';
  }
}

`$script:theme = @{

  root    = @{

    window = @{

      background = `$_theme.primary.background;
    }
  }
  menuBar = @{

    layout   = @{

      background = `$_theme.accent.background;
    }
    component = @{

      fontSize   = 14;
      fontColor  = `$_theme.accent.fontColor;
      background = `$_theme.accent.background;
    }
  }
  statusBar = @{

    layout   = @{

      background = `$_theme.accent.background;
    }
    component = @{

      fontSize   = 13;
      fontColor  = `$_theme.accent.fontColor;
      background = `$_theme.accent.background;
    }
  }
  leftPanel  = @{

    layout = @{

      background  = `$_theme.accent.background;
    }
  }
  rightPanel = @{

    layout = @{

      background  = `$_theme.primary.background;
    }
  }
}
"@
}