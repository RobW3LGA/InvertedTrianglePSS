Describe '1.A.23 CreateProjectTestFiles Utility' {
  
  BeforeEach {
                    
    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\..\utilities\create.project.utilities\create.project.test.files.utility.ps1;
  }
                    
  It '1.A.23.1 Creates ".\testproject\tests" directory -> Throws RunTimeException' {

    $newItemMock.throw = $true;

    {

      createProjectTestFiles 'testproject' |
        Should Throw RunTimeException;
    }
  } <# -Skip #>
                    
  It '1.A.23.2 Creates ".\testproject\tests" directory -> Re-Throws RunTimeException' {

    $newItemMock.throw = $true;

    try { createProjectTestFiles 'testproject' }
    catch { $PSItem.Exception.Message | Should Be $true }
  } <# -Skip #>

  It '1.A.23.3 Creates ".\testproject\tests" directory -> Asserts good directory and location' {

    createProjectTestFiles 'testproject';

    $newItemMock.items[0].value | Should Be "$()";
    $newItemMock.items[0].path | Should Be '.\testproject';
    $newItemMock.items[0].name | Should Be 'tests';
    $newItemMock.items[0].itemType | Should Be 'Directory';
  } <# -Skip #>

  It '1.A.23.4 Creates "console.output.utility.tests.ps1" file with content -> Asserts good file with proper content' {

    $compareContent = consoleOutputUtilityTestsTestContent;

    createProjectTestFiles 'testproject';

    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\tests';
    $newItemMock.items[1].name | Should Be 'console.output.utility.tests.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>

  It '1.A.23.5 Creates "view.utility.tests.ps1" file with content -> Asserts good file with proper content' {

    $compareContent = viewUtilityTestsTestContent;

    createProjectTestFiles 'testproject';

    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\tests';
    $newItemMock.items[2].name | Should Be 'view.utility.tests.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>

  It '1.A.23.6 Creates ".\testproject\tests\test.arrange" directory -> Asserts good directory and location' {

    createProjectTestFiles 'testproject';

    $newItemMock.items[3].value | Should Be "$()";
    $newItemMock.items[3].path | Should Be '.\testproject\tests';
    $newItemMock.items[3].name | Should Be 'test.arrange';
    $newItemMock.items[3].itemType | Should Be 'Directory';
  } <# -Skip #>

  It '1.A.23.7 Creates "test.arrange.ps1" file with content -> Asserts good file with proper content' {

    $compareContent = testArrangeTestContent;

    createProjectTestFiles 'testproject';

    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[4].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[4].path | Should Be '.\testproject\tests\test.arrange';
    $newItemMock.items[4].name | Should Be 'test.arrange.ps1';
    $newItemMock.items[4].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>
}