function script:rootPropertyContent {

  return @"
`$script:rootProperty = @{

  window = @{

    title      = `$view.root.window.title;
    background = `$theme.root.window.background;
    minHeight  = `$size.root.window.minHeight;
    minWidth   = `$size.root.window.minWidth;
  }
  layout = @{ }
}
"@
}