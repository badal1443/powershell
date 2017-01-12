#While declaring a varable there is some more processing happens . 
# There is *-Variable cmdlets that works behind the scene to create a new variabl

New-Variable -Name var1 -Value 10 # is same as $var1 = 10
$var1

<# Error if variable already exists which you're trying to create

$var
New-Variable : A variable with name 'var' already exists.
At line:1 char:1
+ New-Variable -Name var -Value 10
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ResourceExists: (var:String) [New-Variable], SessionStateException
    + FullyQualifiedErrorId : VariableAlreadyExists,Microsoft.PowerShell.Commands.NewVariableCommand

#>

#Getting the value of a variable
Get-Variable var1 -ValueOnly # is equivalent to $var1 as shown below

$var1

#Changing the value of already created variable.
#remember, when you try to recreated a variable t throws an error.
# Use following cmdlets to change the value of a variable

Set-Variable -Name var1 -Value 15 
# is equivalent to $var1 = 15

#Print the new vale stored in var1
Get-Variable -Name var1 -ValueOnly


#Display all the variables
Get-Variable

#Setting the varible value to null, or wiping out the content of variable

Clear-Variable -Name var1

#same as $var1 = $null

$var1

if($var1 -eq $null){

    Write-Host "The var1 value is null"

}

#Variable still exist but content is lost
Get-Variable var1

<# output
Get-Variable var1

Name                           Value                                                                                                                           
----                           -----                                                                                                                           
var1                                 
#>


#Remove the varibel from env

Remove-Variable var1

# once removed no command would work on for this variable

Get-Variable var1

<# output

Get-Variable : Cannot find a variable with the name 'var1'.
At line:1 char:1
+ Get-Variable var1
+ ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (var1:String) [Get-Variable], ItemNotFoundException
    + FullyQualifiedErrorId : VariableNotFound,Microsoft.PowerShell.Commands.GetVariableCommand
 

#>


