function script:createProjectRootFolder {
  Param([Parameter(Mandatory = $true)][string]$project)

  try { newItem -Path '.' -Name $project -ItemType 'Directory' }
  catch { throw "CreateProjectRootFolder Error: $($PSItem.Exception.Message)" }
}