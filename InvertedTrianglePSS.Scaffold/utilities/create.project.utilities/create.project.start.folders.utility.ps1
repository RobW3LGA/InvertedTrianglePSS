function script:createProjectStartFolders {
  Param([Parameter(Mandatory = $true)][string]$project)

  foreach ($category in $system.categories) {
    try { newItem -Path ".\$($project)" -Name (pluralize $category) -ItemType 'Directory' }
    catch { throw "CreateProjectStartFolders Error: $($PSItem.Exception.Message)" }
  }
}