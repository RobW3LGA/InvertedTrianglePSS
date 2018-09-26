function script:sizeSettingTestContent {

  return @"
`$private:__size = @{

  column = @{ count = 5 }
  window = @{

    height = ([System.Windows.SystemParameters]::PrimaryScreenHeight * .89);
    width  = ([System.Windows.SystemParameters]::PrimaryScreenWidth * .75);
  }
}

`$private:_size = @{

  twoColumn   = @{ width = ((`$__size.window.width / `$__size.column.count) * 2) }
  threeColumn = @{ width = ((`$__size.window.width / `$__size.column.count) * 3) }
}

`$script:size = @{  

  root        = @{

    window = @{

      minHeight = (`$__size.window.height);
      minWidth  = (`$__size.window.width);
    }
  }
  menuBar     = @{

    layout = @{ height = 34 }
  }
  statusBar   = @{

    layout = @{ height = 34 }
  }
  panel = @{

    layout = @{

      twoColumn   = @{ width = `$_size.twoColumn.width }
      threeColumn   = @{ width = `$_size.threeColumn.width }
    }
  }
}
"@
}