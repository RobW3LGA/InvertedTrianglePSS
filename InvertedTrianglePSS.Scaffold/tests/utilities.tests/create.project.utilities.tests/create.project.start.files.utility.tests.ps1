Describe '1.A.21 CreateProjectStartFiles Utility' {

  BeforeEach {

    . $PSScriptRoot\..\..\test.arrange\test.arrange.ps1;
    . $PSScriptRoot\..\..\..\utilities\create.project.utilities\create.project.start.files.utility.ps1;
  }

  It '1.A.21.1 Creates "testproject" -> Throws RunTimeException' {

    $newItemMock.throw = $true;

    {

      createProjectStartFiles 'testproject' |
        Should Throw RunTimeException
    }
  } <# -Skip #>

  It '1.A.21.2 Creates "testproject" -> Re-Throws RunTimeException' { #TODO: Throw from createProjectStartFiles try/catch block

    $newItemMock.throw = $true;

    try { createProjectStartFiles 'testproject' }
    catch { $PSItem.Exception.Message | Should Be $true }
  } <# -Skip #>

  It '1.A.21.3 Creates "testproject.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @();
    $compareContent = projectStartFileTestContent;

    createProjectStartFiles 'testproject';

    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[0].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[0].path | Should Be '.\testproject';
    $newItemMock.items[0].name | Should Be 'testproject.ps1';
    $newItemMock.items[0].itemType | Should Be 'File';
    $newItemMock.called | Should Be 1;
  } <# -Skip #>

  It '1.A.21.4 Creates "menu.bar.action.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('action');
    $compareContent = menuBarActionTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\actions';
    $newItemMock.items[1].name | Should Be 'menu.bar.action.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  } <# -Skip #>

  It '1.A.21.5 Creates "root.action.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('action');
    $compareContent = rootActionTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\actions';
    $newItemMock.items[2].name | Should Be 'root.action.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  } <# -Skip #>

  It '1.A.21.6 Creates "status.bar.action.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('action');
    $compareContent = statusBarActionTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[3].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[3].path | Should Be '.\testproject\actions';
    $newItemMock.items[3].name | Should Be 'status.bar.action.ps1';
    $newItemMock.items[3].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  } <# -Skip #>

  It '1.A.21.7 Creates "menu.bar.component.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('component');
    $compareContent = menuBarComponentTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\components';
    $newItemMock.items[1].name | Should Be 'menu.bar.component.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 3;
  } <# -Skip #>

  It '1.A.21.8 Creates "status.bar.component.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('component');
    $compareContent = statusBarComponentTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\components';
    $newItemMock.items[2].name | Should Be 'status.bar.component.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 3;
  } <# -Skip #>

  It '1.A.21.9 Creates "menu.bar.event.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('event');
    $compareContent = menuBarEventTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\events';
    $newItemMock.items[1].name | Should Be 'menu.bar.event.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  } <# -Skip #>

  It '1.A.21.10 Creates "root.event.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('event');
    $compareContent = rootEventTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\events';
    $newItemMock.items[2].name | Should Be 'root.event.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  } <# -Skip #>

  It '1.A.21.11 Creates "status.bar.event.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('event');
    $compareContent = statusBarEventTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[3].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[3].path | Should Be '.\testproject\events';
    $newItemMock.items[3].name | Should Be 'status.bar.event.ps1';
    $newItemMock.items[3].itemType | Should Be 'File';
    $newItemMock.called | Should Be 4;
  } <# -Skip #>

  It '1.A.21.12 Creates "menu.bar.layout" directory -> Asserts good directory and location' {

    $system.categories = @('layout');

    createProjectStartFiles 'testproject';

    $newItemMock.items[1].value | Should Be "$()";
    $newItemMock.items[1].path | Should Be '.\testproject\layouts';
    $newItemMock.items[1].name | Should Be 'menu.bar.layout';
    $newItemMock.items[1].itemType | Should Be 'Directory';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.13 Creates "menu.bar.layout.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('layout');
    $compareContent = menuBarLayoutTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\layouts\menu.bar.layout';
    $newItemMock.items[2].name | Should Be 'menu.bar.layout.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.14 Creates "panel.layout" directory -> Asserts good directory and location' {

    $system.categories = @('layout');

    createProjectStartFiles 'testproject';

    $newItemMock.items[3].value | Should Be "$()";
    $newItemMock.items[3].path | Should Be '.\testproject\layouts';
    $newItemMock.items[3].name | Should Be 'panel.layout';
    $newItemMock.items[3].itemType | Should Be 'Directory';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.15 Creates "left.panel.layout.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('layout');
    $compareContent = leftPanelLayoutTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[4].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[4].path | Should Be '.\testproject\layouts\panel.layout';
    $newItemMock.items[4].name | Should Be 'left.panel.layout.ps1';
    $newItemMock.items[4].itemType | Should Be 'File';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.16 Creates "right.panel.layout.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('layout');
    $compareContent = rightPanelLayoutTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[5].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[5].path | Should Be '.\testproject\layouts\panel.layout';
    $newItemMock.items[5].name | Should Be 'right.panel.layout.ps1';
    $newItemMock.items[5].itemType | Should Be 'File';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.17 Creates "status.bar.layout" directory -> Asserts good directory and location' {

    $system.categories = @('layout');

    createProjectStartFiles 'testproject';

    $newItemMock.items[6].value | Should Be "$()";
    $newItemMock.items[6].path | Should Be '.\testproject\layouts';
    $newItemMock.items[6].name | Should Be 'status.bar.layout';
    $newItemMock.items[6].itemType | Should Be 'Directory';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.18 Creates "status.bar.layout.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('layout');
    $compareContent = statusBarLayoutTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[7].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[7].path | Should Be '.\testproject\layouts\status.bar.layout';
    $newItemMock.items[7].name | Should Be 'status.bar.layout.ps1';
    $newItemMock.items[7].itemType | Should Be 'File';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.19 Creates "root.layout.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('layout');
    $compareContent = rootLayoutTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[8].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[8].path | Should Be '.\testproject\layouts';
    $newItemMock.items[8].name | Should Be 'root.layout.ps1';
    $newItemMock.items[8].itemType | Should Be 'File';
    $newItemMock.called | Should Be 9;
  } <# -Skip #>

  It '1.A.21.20 Creates "view.model.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('model');
    $compareContent = viewModelTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\models';
    $newItemMock.items[1].name | Should Be 'view.model.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 2;
  } <# -Skip #>

  It '1.A.21.21 Creates "menu.bar.property.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('property');
    $compareContent = menuBarPropertyTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\properties';
    $newItemMock.items[1].name | Should Be 'menu.bar.property.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>

  It '1.A.21.22 Creates "panel.property.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('property');
    $compareContent = panelPropertyTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\properties';
    $newItemMock.items[2].name | Should Be 'panel.property.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>

  It '1.A.21.23 Creates "root.property.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('property');
    $compareContent = rootPropertyTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[3].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[3].path | Should Be '.\testproject\properties';
    $newItemMock.items[3].name | Should Be 'root.property.ps1';
    $newItemMock.items[3].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>

  It '1.A.21.24 Creates "status.bar.property.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('property');
    $compareContent = statusBarPropertyTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[4].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[4].path | Should Be '.\testproject\properties';
    $newItemMock.items[4].name | Should Be 'status.bar.property.ps1';
    $newItemMock.items[4].itemType | Should Be 'File';
    $newItemMock.called | Should Be 5;
  } <# -Skip #>

  It '1.A.21.25 Creates "initial.settings" directory -> Asserts good directory and location' {

    $system.categories = @('setting');

    createProjectStartFiles 'testproject';

    $newItemMock.items[1].value | Should Be "$()";
    $newItemMock.items[1].path | Should Be '.\testproject\settings';
    $newItemMock.items[1].name | Should Be 'initial.settings';
    $newItemMock.items[1].itemType | Should Be 'Directory';
    $newItemMock.called | Should Be 6;
  } <# -Skip #>

  It '1.A.21.26 Creates "system.setting.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('setting');
    $compareContent = systemSettingTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\settings\initial.settings';
    $newItemMock.items[2].name | Should Be 'system.setting.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 6;
  } <# -Skip #>

  It '1.A.21.27 Creates "en-us.setting.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('setting');
    $compareContent = enUsSettingTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[3].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[3].path | Should Be '.\testproject\settings';
    $newItemMock.items[3].name | Should Be 'en-us.setting.ps1';
    $newItemMock.items[3].itemType | Should Be 'File';
    $newItemMock.called | Should Be 6;
  } <# -Skip #>

  It '1.A.21.28 Creates "size.setting.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('setting');
    $compareContent = sizeSettingTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[4].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[4].path | Should Be '.\testproject\settings';
    $newItemMock.items[4].name | Should Be 'size.setting.ps1';
    $newItemMock.items[4].itemType | Should Be 'File';
    $newItemMock.called | Should Be 6;
  } <# -Skip #>

  It '1.A.21.29 Creates "theme.setting.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('setting');
    $compareContent = themeSettingTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[5].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[5].path | Should Be '.\testproject\settings';
    $newItemMock.items[5].name | Should Be 'theme.setting.ps1';
    $newItemMock.items[5].itemType | Should Be 'File';
    $newItemMock.called | Should Be 6;
  } <# -Skip #>

  It '1.A.21.30 Creates "console.output.utility.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('utility');
    $compareContent = consoleOutputUtilityTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[1].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[1].path | Should Be '.\testproject\utilities';
    $newItemMock.items[1].name | Should Be 'console.output.utility.ps1';
    $newItemMock.items[1].itemType | Should Be 'File';
    $newItemMock.called | Should Be 3;
  } <# -Skip #>

  It '1.A.21.31 Creates "view.utility.ps1" file with content -> Asserts good file with proper content' {

    $system.categories = @('utility');
    $compareContent = viewUtilityTestContent;

    createProjectStartFiles 'testproject';
    $isIdentical = [string]::Compare($compareContent, $newItemMock.items[2].value)

    $isIdentical | Should Be 0;
    $newItemMock.items[2].path | Should Be '.\testproject\utilities';
    $newItemMock.items[2].name | Should Be 'view.utility.ps1';
    $newItemMock.items[2].itemType | Should Be 'File';
    $newItemMock.called | Should Be 3;
  } <# -Skip #>
}