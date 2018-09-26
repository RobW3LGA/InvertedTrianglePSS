function local:projectCheckText {
  Param([Parameter(Mandatory = $true)][string]$projectPath)

  $projectPathName = (Get-Item $projectPath).Name

  return @"

$($system.prompt) $($projectPathName) does not appear to be a $($system.wpfBotName) project. Continue? 
  
"@
}

function script:createComponent {
  Param(
    [Parameter(Mandatory = $true)][AllowEmptyString()][string]$project,
    [Parameter(Mandatory = $true)][string]$component
  )

  $projectPath = [string]::Empty;

  if ([string]::IsNullOrEmpty($project) ) { $projectPath = '.' }
  else { $projectPath = ".\$($project)" }

  $testForPath = "$($projectPath)\*.ps1";
  $testForProject = "Import-Module $($system.wpfBotName)";

  #if ($null -eq (Get-Content $testForPath -ErrorAction SilentlyContinue | Select-String $testForProject)) {
  if ($null -eq (validateProjectPath $testForPath $testForProject)) {

    Write-Host (projectCheckText $projectPath);

    $returned = Read-Host "$($system.prompt) (Y/N)";

    switch ($returned) {
      'y' { }
      'n' { Write-Host "$($system.prompt) Denied component creation"; return }
      default { Write-Host "$($system.prompt) Skipped component creation"; return }
    }
  }

  try { createComponentFiles $project $component }
  catch { throw "CreateComponent -> $($PSItem.Exception.Message)" }
}