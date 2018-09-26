function script:createProjectStartFiles {
  Param([Parameter(Mandatory = $true)][string]$project)

  projectStartFileContent | newItem -Path ".\$($project)" -Name "$($project).ps1" -ItemType 'File';

  foreach ($category in $system.categories) {
    try {

      $folder = pluralize $category;

      switch ($category) {

        'action' {

          menuBarActionContent | newItem -Path ".\$($project)\$($folder)" -Name "menu.bar.$($category).ps1" -ItemType 'File';
          rootActionContent | newItem -Path ".\$($project)\$($folder)" -Name "root.$($category).ps1" -ItemType 'File';
          statusBarActionContent | newItem -Path ".\$($project)\$($folder)" -Name "status.bar.$($category).ps1" -ItemType 'File';
        }

        'component' {

          menuBarComponentContent | newItem -Path ".\$($project)\$($folder)" -Name "menu.bar.$($category).ps1" -ItemType 'File';
          statusBarComponentContent | newItem -Path ".\$($project)\$($folder)" -Name "status.bar.$($category).ps1" -ItemType 'File';
        }

        'event' {

          menuBarEventContent | newItem -Path ".\$($project)\$($folder)" -Name "menu.bar.$($category).ps1" -ItemType 'File';
          rootEventContent | newItem -Path ".\$($project)\$($folder)" -Name "root.$($category).ps1" -ItemType 'File';
          statusBarEventContent | newItem -Path ".\$($project)\$($folder)" -Name "status.bar.$($category).ps1" -ItemType 'File';
        }

        'layout' {

          newItem -Path ".\$($project)\$($folder)" -Name "menu.bar.$($category)" -ItemType 'Directory';
          menuBarLayoutContent | newItem -Path ".\$($project)\$($folder)\menu.bar.$($category)" -Name "menu.bar.$($category).ps1" -ItemType 'File';

          newItem -Path ".\$($project)\$($folder)" -Name "panel.$($category)" -ItemType 'Directory';
          leftPanelLayoutContent | newItem -Path ".\$($project)\$($folder)\panel.$($category)" -Name "left.panel.$($category).ps1" -ItemType 'File';
          rightPanelLayoutContent | newItem -Path ".\$($project)\$($folder)\panel.$($category)" -Name "right.panel.$($category).ps1" -ItemType 'File';

          newItem -Path ".\$($project)\$($folder)" -Name "status.bar.$($category)" -ItemType 'Directory';
          statusBarLayoutContent | newItem -Path ".\$($project)\$($folder)\status.bar.$($category)" -Name "status.bar.$($category).ps1" -ItemType 'File';

          rootLayoutContent | newItem -Path ".\$($project)\$($folder)" -Name "root.$($category).ps1" -ItemType 'File';
        }

        'model' {

          viewModelContent | newItem -Path ".\$($project)\$($folder)" -Name "view.$($category).ps1" -ItemType 'File';
        }

        'property' {

          menuBarPropertyContent | newItem -Path ".\$($project)\$($folder)" -Name "menu.bar.$($category).ps1" -ItemType 'File';
          panelPropertyContent | newItem -Path ".\$($project)\$($folder)" -Name "panel.$($category).ps1" -ItemType 'File';
          rootPropertyContent | newItem -Path ".\$($project)\$($folder)" -Name "root.$($category).ps1" -ItemType 'File';
          statusBarPropertyContent | newItem -Path ".\$($project)\$($folder)" -Name "status.bar.$($category).ps1" -ItemType 'File';
        }

        'setting' {

          newItem -Path ".\$($project)\$($folder)" -Name "initial.$($folder)" -ItemType 'Directory';
          systemSettingContent | newItem -Path ".\$($project)\$($folder)\initial.$($folder)" -Name "system.$($category).ps1" -ItemType 'File';

          enUsSettingContent | newItem -Path ".\$($project)\$($folder)" -Name "en-us.$($category).ps1" -ItemType 'File';
          sizeSettingContent | newItem -Path ".\$($project)\$($folder)" -Name "size.$($category).ps1" -ItemType 'File';
          themeSettingContent | newItem -Path ".\$($project)\$($folder)" -Name "theme.$($category).ps1" -ItemType 'File';
        }

        'utility' {

          consoleOutputUtilityContent | newItem -Path ".\$($project)\$($folder)" -Name "console.output.$($category).ps1" -ItemType 'File';
          viewUtilityContent | newItem -Path ".\$($project)\$($folder)" -Name "view.$($category).ps1" -ItemType 'File';
        }

        default { }
      }
    }
    catch { throw "CreateProjectStartFiles Error: $($PSItem.Exception.Message)" }
  }
}