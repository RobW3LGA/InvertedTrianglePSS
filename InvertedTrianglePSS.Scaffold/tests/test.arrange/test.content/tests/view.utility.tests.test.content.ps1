function script:viewUtilityTestsTestContent {

  return @"
Set-StrictMode -Version Latest;

Describe 'View Utility' {

  BeforeEach {

    . `$PSScriptRoot\test.arrange\test.arrange.ps1;
  }

  It 'initializes the view with the en-Us setting' {

    initializeView 'en-Us'
    `$compare = (Compare-Object `$view `$enUs)
    `$compare | Should Be `$null 
  }
}
"@
}