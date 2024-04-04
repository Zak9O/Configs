Invoke-Expression (&starship init powershell)
Import-Module -Name Terminal-Icons
Import-Module posh-git
$GitPromptSettings.EnableFileStatus = $false

New-Alias -Name or -Value rider64.exe
New-Alias -Name ss -Value Select-String

Function Open-Explorer 
{ 
   explorer.exe (Get-Location).Path 
}
New-Alias -Name oexp -Value Open-Explorer
