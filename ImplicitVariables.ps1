#Powershell offers fiew Built in/automatic variables for you to make you task easy that can be used in comparisn or to seek default info

#boolean

$true

$false

#use case

$a = 10
$b = 11


if( ($a -eq $b) -eq $true){

    Write-Host "a and b are equal"

}elseif (($a -ne $b) -eq $true){
    Write-Host "a and b are not equal"

}

#NULL

$null

$str1

if($str1 -eq $null){
    Write-Host "String str is null!"

}else{
    Write-Host "String str is not null!"
}


#pwd
#print working directory

Write-Host "The current directory is $pwd"

#Home 

$home

Write-Host "The User's home directory is $home"

#current process id PID
$PID

Wite-Host "Returns the process ID for current powershell scripting env"

#The detail info of powershell scripting env
$Host

Write-Host "The detail info of powershell scripting env is: " 
Write-Output $Host


#Powershell version and related info
$PSVersionTable

Write-Output $PSVersionTable

<# Output

Name                           Value                                                                                                                           
----                           -----                                                                                                                           
PSVersion                      4.0                                                                                                                             
WSManStackVersion              3.0                                                                                                                             
SerializationVersion           1.1.0.1                                                                                                                         
CLRVersion                     4.0.30319.42000                                                                                                                 
BuildVersion                   6.3.9600.17400                                                                                                                  
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0}                                                                                                            
PSRemotingProtocolVersion      2.2       

#>



# Current object refrence 

$_ #refrence to current object

#example as below

Get-WmiObject -Class "Win32_Product" | Where-Object {$_.name -like "*winflash*"} 

<# Output
IdentifyingNumber : {8F21291E-0444-4B1D-B9F9-4370A73E346D}
Name              : WinFlash
Vendor            : ASUS
Version           : 2.41.1
Caption           : WinFlash
#>



