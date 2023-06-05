# PowershellScriptRunner
PowershellScriptRunner is a windows batch script that simplifies the execution and debugging of PowerShell scripts within .NET build events.

.NET Build events can become complex and challenging to manage with batch scripts. This script provides an alternative way to handle these events, the script runner executes a PowerShell script from a .NET Build event, and handles the input, output, and error reporting.

## Usage
Download the script from the 'src' folder. Then you can then call this script from your .NET Build event as follows:
```
C:\YourPath\run_ps_script.bat "yourPowershellScript.ps1" -ProjectDir $(ProjectDir) -TargetDir $(TargetDir)
```
yourPowershellScript.ps1
```
param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectDir,

    [Parameter(Mandatory = $true)]
    [string]$TargetDir
)

Write-Host "ProjectDir: '$ProjectDir'"
Write-Host "TargetDir: '$TargetDir'"
```


## Contributing
Feel free to contribute to this project by opening a Pull Request for any enhancements, bug fixes, or improvements you would like to make.
