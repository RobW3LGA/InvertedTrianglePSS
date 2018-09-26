Describe '1.A.1 CreateComponent Utility' {
  
  BeforeEach {
    
    . $PSScriptRoot\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\utilities\create.component.utility.ps1;
  }

  It '1.A.1.1 Creates component directory structure -> Re-Throws RunTimeException' {
    
    $newItemMock.throw = $true;

    try { createComponent 'testproject' 'test.file'; }
    catch { $PSItem.Exception.Message | Should Be $true }
  }

  It '1.A.1.2 Creates component directory structure -> Asserts initial folder create' {
    
    createComponent 'testproject' 'test.file';

    $newItemMock.items[0].path | Should Be '.\testproject\actions';
    $newItemMock.items[0].name | Should Be 'test.file.action.ps1';
    $newItemMock.items[0].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  }
}