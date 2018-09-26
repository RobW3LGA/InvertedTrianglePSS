Describe '1.A.20 CreateProjectRootFolder Utility' {
  
  BeforeEach {
                    
    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\..\utilities\create.project.utilities\create.project.root.folder.utility.ps1;
  }
                    
  It '1.A.20.1 Creates "testRootFolder" directory -> Throws RunTimeException' {
                    
    $newItemMock.throw = $true;

    {

      createProjectRootFolder 'testRootFolder' |
        Should Throw RunTimeException;
    }
  }
                
  It '1.A.20.2 Creates "testRootFolder" directory -> Re-Throws RunTimeException' {
                    
    $newItemMock.throw = $true;

    try { createProjectRootFolder 'testRootFolder' }
    catch { $PSItem.Exception.Message | Should Be $true }
  }

  It '1.A.20.3 Creates "testRootFolder" directory -> Asserts good directory and location' {
                    
    createProjectRootFolder 'testRootFolder';

    $newItemMock.items[0].value | Should Be "$()";
    $newItemMock.items[0].path | Should Be '.';
    $newItemMock.items[0].name | Should Be 'testRootFolder';
    $newItemMock.items[0].itemType | Should Be 'Directory';
  }
}