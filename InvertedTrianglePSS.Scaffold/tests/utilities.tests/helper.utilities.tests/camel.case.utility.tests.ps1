Describe '1.A.7 CamelCase Utility' {

  BeforeEach {

    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
  }
  
  It '1.A.7.1 "camel.case" entered -> returns "camelCase"' {

    camelCase 'camel.case' | Should -Be 'camelCase';
  }
}