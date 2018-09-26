function script:viewModelTestContent {

  return @"
Class StatusBar { }

Class MenuBar { }

Class Root { }

Class ViewModel {

  `$root = [Root]::new();
  `$menuBar = [MenuBar]::new();
  `$statusBar = [StatusBar]::new();
}
"@
}