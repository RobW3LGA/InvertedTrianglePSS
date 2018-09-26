function script:viewUtilityTestContent {

  return @"
`$private:language = [System.Globalization.CultureInfo]::CurrentCulture
`$script:view = [ViewModel]::new();

function script:initializeView {
  Param([Parameter(Mandatory = `$true)][string]`$language)

  if (`$language -eq 'en-Us') { return `$enUs }
}

try { `$view = initializeView `$language }
catch { throw "InitializeView Error: `$(`$PSItem.Exception.Message)" }
"@
}