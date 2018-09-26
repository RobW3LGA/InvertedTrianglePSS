function script:consoleOutputUtilityTestsContent {

  return @"
Set-StrictMode -Version Latest;

Describe 'Console Output Utility' {

  BeforeEach {

    . `$PSScriptRoot\test.arrange\test.arrange.ps1;
  }

  It 'writes to the console via a utility' {

    consoleOutput 'TestOutput' *>&1 | Should -Be 'TestOutput'
  }
}
"@
}