Describe '1.A.5 Pluralize Utility' {

  BeforeEach {

    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
  }
  
  It '1.A.5.1 "testy" entered -> returns "testies"' {

    pluralize 'testy' | Should -Be 'testies';
  }
}