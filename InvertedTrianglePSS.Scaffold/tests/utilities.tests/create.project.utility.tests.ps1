Describe '1.A.2 CreateProject Utility' {
  
  BeforeEach {
                    
    . $PSScriptRoot\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\utilities\create.project.utility.ps1;
  }
                    
  It '1.A.2.1 Creates project directory structure -> Throws RunTimeException' {

    $newItemMock.throw = $true;

    {

      createProject 'testproject' |
        Should Throw RunTimeException;
    }
  } <# -Skip #>

  It '1.A.2.2 Creates project directory structure -> Asserts good directory and location' {

    createProject 'testproject';

    $newItemMock.items[0].value | Should Be "$()";
    $newItemMock.items[0].path | Should Be '.';
    $newItemMock.items[0].name | Should Be 'testproject';
    $newItemMock.items[0].itemType | Should Be 'Directory';
    $newItemMock.called | Should Be 43;
  } <# -Skip #>
}