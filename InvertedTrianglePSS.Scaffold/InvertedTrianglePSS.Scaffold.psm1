Set-StrictMode -Version Latest;

$settings = @( Get-ChildItem -Path $PSScriptRoot\settings\*.setting.ps1 -Recurse -ErrorAction SilentlyContinue );
$utilities = @( Get-ChildItem -Path $PSScriptRoot\utilities\*.utility.ps1 -Recurse -ErrorAction SilentlyContinue );

$importModules = @(
  $settings +
  $utilities
)

foreach ($import in $importModules) {
  try { . $import.fullname }
  catch { Write-Error -Message "ImportModules Error: $($PSItem.Exception.Message)" }
}

function global:New-InvertedTrianglePSS {
<#
.SYNOPSIS
A thought experiment

.DESCRIPTION
This module contains PowerShell functions to create and demonstrate the Inverted Triangle PSS pattern. Running the resulting project requires Mike Shepard's WPFBot3000 Domain-Specific Language

.PARAMETER Project
The name of the project to scaffold

.PARAMETER Component
The name of the component to add to an existing project

.EXAMPLE
PS \> New-InvertedTrianglePSS

This command (without parameters) generates the base ITPSS demonstration. Running ITPSSDemo.ps1 starts a WPF window

.EXAMPLE
PS \> New-InvertedTrianglePSS -Project Demo.One

This command generates the ITPSS scaffold with the specified project name. Running the root *.ps1 script starts a WPF window

.EXAMPLE
PS \> New-InvertedTrianglePSS -Component demo.two

This command, when run inside an ITPSS scaffold, generates a component and supporting files with the specified component name. The component var needs to be placed into a layout to be visible. A dot in the supplied name will convert to camelcasing inside the component files (e.g camel.case -> camelCase)

.EXAMPLE
PS \> New-InvertedTrianglePSS -Project Demo.One -Component demo.two

This command generates the ITPSS scaffold with the specified project name and then generates a component and supporting files with the specified component name

.LINK
https://github.com/MikeShepard/WPFBot3000

.LINK
https://www.powershellgallery.com/packages/WPFBot3000

.INPUTS
System.String

.OUTPUTS
An Inverted Triangle PowerShell WPF project structure supported by WPFBot3000
#>
  [CmdletBinding()]
  Param(
    [Parameter(Mandatory = $false)][string]$Project,
    [Parameter(Mandatory = $false)][string]$Component
  )
  PROCESS {
    try {
      if (!$Project -and !$Component) { createProject $system.demoProject }
      elseif ($Project) { createProject $Project }

      if ($Component) { createComponent $Project ($Component.ToLower()) }

      dependencyVersionCheck
    }
    catch { Write-Error -Message "Thrown From -> $($PSItem.Exception.Message)"}
  }
}