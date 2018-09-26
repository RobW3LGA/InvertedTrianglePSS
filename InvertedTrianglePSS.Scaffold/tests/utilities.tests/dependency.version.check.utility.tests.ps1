Describe '1.A.3 DependencyVersionCheck Utility' {
  
  BeforeEach {
  
    . $PSScriptRoot\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\utilities\dependency.version.check.utility.ps1;
  }
  
  It '1.A.3.0 Tests DependencyVersionCheck' {
  
    dependencyVersionCheck

    $null | Should -Not -Be $null;
  } -Skip
}