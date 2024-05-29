Invoke-Expression (&starship init powershell)

Import-Module -Name Terminal-Icons

Import-Module posh-git
$GitPromptSettings.EnableFileStatus = $false

Function Open-Explorer 
{ 
   explorer.exe (Get-Location).Path 
}

New-Alias -Name oexp -Value Open-Explorer
New-Alias -Name g -Value git
New-Alias -Name or -Value rider64.exe
New-Alias -Name ss -Value Select-String

function Open-JsonInChrome {
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string] $JsonContent
    )
    
    process {
        $tempFilePath = [System.IO.Path]::GetTempFileName() + ".json"
        $JsonContent | Out-File -FilePath $tempFilePath -Encoding utf8
        Start-Process "chrome.exe" $tempFilePath
    }
}

#
# The following is specific to the branch
#
