Describe '1.A.4 TitleCase Utility' {

  BeforeEach {

    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
  }

  It '1.A.4.1 "titlecase" entered -> returns "TitleCase"' {

    titleCase 'titleCase' | Should -Be 'TitleCase';
  }
}