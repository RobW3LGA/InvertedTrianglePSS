Describe '1.A.22 CreateProjectStartFolders Utility' {
  
  BeforeEach {
                    
    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\..\utilities\create.project.utilities\create.project.root.folder.utility.ps1;
  }
                    
  It '1.A.22.1 Creates ".\testproject\testdirectories" directory -> Throws RunTimeException' {

    $newItemMock.throw = $true;

    {

      createProjectStartFolders 'testproject' |
        Should Throw RunTimeException;
    }
  }
                    
  It '1.A.22.2 Creates ".\testproject\testdirectories" directory -> Re-Throws RunTimeException' {

    $newItemMock.throw = $true;

    try { createProjectStartFolders 'testproject' }
    catch { $PSItem.Exception.Message | Should Be $true }
  }

  It '1.A.22.3 Creates ".\testproject\testdirectories" directory -> Asserts good directory and location' {

    $system.categories = @('testdirectory');
    createProjectStartFolders 'testproject';

    $newItemMock.items[0].value | Should Be "$()";
    $newItemMock.items[0].path | Should Be '.\testproject';
    $newItemMock.items[0].name | Should Be 'testdirectories';
    $newItemMock.items[0].itemType | Should Be 'Directory';
  }
}