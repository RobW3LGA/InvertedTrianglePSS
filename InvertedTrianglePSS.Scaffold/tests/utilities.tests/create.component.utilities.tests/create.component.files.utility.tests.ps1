Describe '1.A.10 CreateComponentFiles Utility' {
  
  BeforeEach {
                      
    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\..\utilities\create.component.utilities\create.component.files.utility.ps1;
  }
     
  It '1.A.10.1 Creates "test.file.action.ps1" file with content -> Re-Throws RunTimeException' {
                    
    $newItemMock.throw = $true;

    try { createComponentFiles 'testproject' 'test.file'; }
    catch { $PSItem.Exception.Message | Should Be $true }
  }

                      
  It '1.A.10.2 Creates "test.file.action.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('action');
    $compareContent = newFileActionTestContent 'testFile';

    createComponentFiles 'testproject' 'test.file';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[0].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[0].path | Should Be '.\testproject\actions';
    $newItemMock.items[0].name | Should Be 'test.file.action.ps1';
    $newItemMock.items[0].itemType | Should Be 'File';
    $newItemMock.called | Should Be 1;
  } <# -Skip #>
                      
  It '1.A.10.3 Creates "test.file.component.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('component');
    $compareContent = newFileComponentTestContent 'testFile';

    createComponentFiles 'testproject' 'test.file';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[0].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[0].path | Should Be '.\testproject\components';
    $newItemMock.items[0].name | Should Be 'test.file.component.ps1';
    $newItemMock.items[0].itemType | Should Be 'File';
    $newItemMock.called | Should Be 1;
  } <# -Skip #>
                      
  It '1.A.10.4 Creates "test.file.event.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('event');
    $compareContent = newFileEventTestContent 'testFile';

    createComponentFiles 'testproject' 'test.file';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[0].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[0].path | Should Be '.\testproject\events';
    $newItemMock.items[0].name | Should Be 'test.file.event.ps1';
    $newItemMock.items[0].itemType | Should Be 'File';
    $newItemMock.called | Should Be 1;
  } <# -Skip #>
                      
  It '1.A.10.5 Creates "test.file.event.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('property');
    $compareContent = newFilePropertyTestContent 'testFile';

    createComponentFiles 'testproject' 'test.file';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[0].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[0].path | Should Be '.\testproject\properties';
    $newItemMock.items[0].name | Should Be 'test.file.property.ps1';
    $newItemMock.items[0].itemType | Should Be 'File';
    $newItemMock.called | Should Be 1;
  } <# -Skip #>
}