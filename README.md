# PowershellScriptRunner
PowershellScriptRunner is a script that simplifies the execution and debugging of PowerShell scripts within .NET build events.

.NET Build events can become complex and challenging to manage with batch scripts. This script provides an alternative way to handle these events, the script runner executes a PowerShell script from a .NET Build event, and handles the input, output, and error reporting.

## Usage
You can then call this script from your .NET Build event as follows:
`run_ps_script.bat "pathToYourPowershellScript.ps1" -ProjectDir $(ProjectDir) -TargetDir $(TargetDir)
