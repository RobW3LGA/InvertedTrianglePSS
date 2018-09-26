function script:enUsSettingTestContent {

  return @"
`$script:enUs = [ViewModel]@{

  root      = @{

    window = @{

      title = "ITPSS Demo v`$(`$system.version)";
    }
  }
  menuBar   = @{

    fileMenu = @{

      text       = '_File'
      exitButton = @{ text = 'E_xit' }
    }
  }
  statusBar = @{

    systemStatus = @{

      label   = 'System Status:';
      loading = 'Loading...';
      ready   = 'Ready';
    }
  }
}
"@
}