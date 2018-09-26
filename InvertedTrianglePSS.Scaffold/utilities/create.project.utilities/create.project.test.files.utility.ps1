function script:createProjectTestFiles {
  Param([Parameter(Mandatory = $true)][string]$project)

  try {

    newItem -Path ".\$($project)" -Name 'tests' -ItemType 'Directory';
    consoleOutputUtilityTestsContent | newItem -Path ".\$($project)\tests" -Name 'console.output.utility.tests.ps1' -ItemType 'File';
    viewUtilityTestsContent | newItem -Path ".\$($project)\tests" -Name 'view.utility.tests.ps1' -ItemType 'File';

    newItem -Path ".\$($project)\tests" -Name 'test.arrange' -ItemType 'Directory';
    testArrangeContent | newItem -Path ".\$($project)\tests\test.arrange" -Name 'test.arrange.ps1' -ItemType 'File';
  }
  catch { throw "CreateProjectTestFiles Error: $($PSItem.Exception.Message)" }
}