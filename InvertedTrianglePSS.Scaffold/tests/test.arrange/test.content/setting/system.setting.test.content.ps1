function script:systemSettingTestContent {

  return @"
`$private:_system = @{

  version = '$($system.wpfBotHighVersion)';
}

`$script:system = @{

  version = `$_system.version;
}
"@
}