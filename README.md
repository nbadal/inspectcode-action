# InspectCode docker action

This action executes JetBrains' Resharper InspectCode CLI utility, and writes the output to `report.xml`

## Inputs

### `solution`

**Required** Path to your solution file, ex: `MyProject.sln`

## Example Usage:

```
name: InspectMaster

on:
  push:
    branches: [ master ]

jobs:
  self-test:
   runs-on: ubuntu-latest
   name: Self Test
   steps:
     - name: Checkout
       uses: actions/checkout@v2
     - name: Inspect
       uses: nbadal/inspectcode-action
       with:
          solution: './MyProject.sln'
```