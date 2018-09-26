function script:newFilePropertyContent {
  Param([Parameter(Mandatory = $true)][string]$component)

  return @"
`$script:$($component)Property = @{

  component = @{

  }
  label = @{

    content = '$($component) Component';
  }
}
"@
}