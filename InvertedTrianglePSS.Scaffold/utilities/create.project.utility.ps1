function script:createProject {
  Param([Parameter(Mandatory = $true)][string]$project)

  try {

    if (!(Test-Path -Path ".\$($project)" -ErrorAction SilentlyContinue)) {
      createProjectRootFolder $project;
      createProjectStartFolders $project;
      createProjectStartFiles $project;
      createProjectTestFiles $project;
    }
  }
  catch { throw "CreateProject Error: $($PSItem.Exception.Message)" }
}