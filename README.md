# Inverted Triangle PowerShell

## Welcome to a PowerShell thought experiment...

<img src="/docs/itpss.diagram.png" alt="Inverted Triangle PowerShell diagram: Models, Settings, Utilities, Actions, Events, Properties, Components, Layouts" />

### Inverted Triangle PowerShell (ITPSS) is a flexible module organizational pattern that loads *.ps1 files in order of specificity and promotes code reuse. Each layer is loaded in order and has dependencies only on preceding layers. 

### Layers are represented by named directories and loaded in the following order (as noted in the diagram above):
  - Models: PowerShell classes that, when instanced, hold model data
  - Settings: System-wide values
  - Utilities: Functions that can be accessed system-wide
  - Actions: Executes events raised from the user interface, calls functions in the Utilities layer and updates the interface
  - Events: Abstraction layer that binds the user interface to the Actions layer and promotes loose code coupling
  - Properties: Values stored and used by components
  - Components: Logical groupings of user interface elements
  - Layouts: The root structure of the user interface, starting with a Window object

### This pattern is flexible: Organized PowerShell modules need only implement layers specific to each project. For instance: This module, InvertedTrianglePSS.Scaffold, implements only the Settings and Utilities layers while projects emitted by this module use all eight.

### PowerShell script (.ps1) files follow a similar naming convention and are suffixed according to the parent folder:
  - Models example file name: view.model.ps1
  - Settings example file name: system.setting.ps1
  - etc.

### This proposed organizational pattern is inspired by Harry Roberts' Inverted Triangle CSS and made possible by Mike Shepard's WPFBot3000

## Installation

### PowerShell version check (minimum):
```
PS \> $PSVersionTable.PSVersion

Major  Minor  Build  Revision
-----  -----  -----  --------
5      1      (any)  (any)
```

### Install From PowerShell (Admin):
```
PS \> Install-Module -Name InvertedTrianglePSS.Scaffold -Force
```

### Emitted project scaffolds (and examples below) require WPFBot3000 to run:
```
PS \> Install-Module -Name WPFBot3000 -Force
```

## Examples
### Example One:
```
PS \> New-InvertedTrianglePSS
```

This command (without parameters) generates the base ITPSS demonstration. Running ITPSSDemo.ps1 starts a WPF window

### Example Two:
```
PS \> New-InvertedTrianglePSS -Project Demo.One
```

This command generates the ITPSS scaffold with the specified project name. Running the root *.ps1 script starts a WPF window

### Example Three:
```
PS \> New-InvertedTrianglePSS -Component demo.two
```

This command, when run inside an ITPSS scaffold, generates a component and supporting files with the specified component name. The component var needs to be placed into a layout to be visible. A dot in the supplied name will convert to camelcasing inside the component files (e.g camel.case -> camelCase)

### Example Four:
```
PS \> New-InvertedTrianglePSS -Project Demo.One -Component demo.two
```

This command generates the ITPSS scaffold with the specified project name and then generates a component and supporting files with the specified component name

## Documentation

### [WPFBot3000 on GitHub][github-wpfbot]

[github-wpfbot]: https://github.com/MikeShepard/WPFBot3000
