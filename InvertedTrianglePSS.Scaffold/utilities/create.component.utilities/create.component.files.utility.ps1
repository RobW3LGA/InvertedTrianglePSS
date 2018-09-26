function script:createComponentFiles {
  Param(
    [Parameter(Mandatory = $true)][string]$projectPath,
    [Parameter(Mandatory = $true)][string]$component
  )

  foreach ($category in $system.categories) {
    try {

      $folderName = pluralize $category;

      switch ($category) {

        'action' {

          (newFileActionContent (camelCase $component)) | newItem -Path ".\$($projectPath)\$($folderName)" -Name "$($component).$($category).ps1" -ItemType 'File';
        }

        'component' {

          (newFileComponentContent (camelCase $component)) | newItem -Path ".\$($projectPath)\$($folderName)" -Name "$($component).$($category).ps1" -ItemType 'File';
        }

        'event' {

          (newFileEventContent (camelCase $component)) | newItem -Path ".\$($projectPath)\$($folderName)" -Name "$($component).$($category).ps1" -ItemType 'File';
        }

        'property' {

          (newFilePropertyContent (camelCase $component)) | newItem -Path ".\$($projectPath)\$($folderName)" -Name "$($component).$($category).ps1" -ItemType 'File';
        }

        default { }
      }
    }
    catch { throw "CreateComponentFiles Error: $($PSItem.Exception.Message)" }
  }
}