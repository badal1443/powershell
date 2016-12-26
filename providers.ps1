#Providers in powershell to provide info related to environment and system

<#

A provider is a mechanism via which you can access various things in your ssystem as the same way you navigate filesystem(files and drives) in your system.

A provide provides drives euivalent vy uses of that you can navigate ad get/set on things like, Regsistry or System's environment variables.

Simply a Provider can be thought as a provider to your systemes internal info/settings by powershell.

#>

#region Provider example 1 listing default providers
Get-PSProvider

# It will list all provider like env and registry

# You can use those providers as you are using any drive of folder path 
# Commnds such as Get-Childitem would list all items in env
# Use Drives name as drive/path to see the content as shown in following commands
Get-ChildItem env:

Get-ChildItem Variable:

#PSDrive orivides the drive keywords which we can use in powershell to navigate system's inertnals

Get-PSDrive #It will =return drives for various roviders in system available for powershell

Get-PSDrive D #Use drive name to navigate to specific provider (here D is provider for d drive in powershell).

#endregion Provider example 1

#region set providers as working directory

Set-Location variables:
Get-ChildItem
#endregion 

#region set providers as working directory

Set-Location alias:
Get-ChildItem
#endregion 

#region Creating a new provider drive in powershell

New-PSDrive -PSProvider FileSystem -Name `
    PSCA -Description "Powershell content Area on my hard drive C:\Users\badal\Documents\Powershell_blogs" `
    -Root "C:\Users\badal\Documents\Powershell_blogs"

#endregion

