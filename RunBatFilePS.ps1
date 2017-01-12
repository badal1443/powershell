<#
This script shows how to run a simple bat file in powershell
This will take a path for Bat file and run it

#>

function RunABatFile{
    param([string] $batFileFullPath)

    if(Test-Path -Path $batFileFullPath -PathType Leaf){

    cmd.exe /c $batFileFullPath

    } elseif (Test-Path -Path $batFileFullPath -PathType Container){

        Write-Host "Please provide correct file name"

    }
}


RunABatFile $batFileFullPath

