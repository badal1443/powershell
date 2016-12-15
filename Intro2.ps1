#---------------------------------------------------------------------------
#Cmdlets
#---------------------------------------------------------------------------

#region cmdlets

#Get-Command : Get all the commands available in powershell for this computer
Get-Command


#Classify/search for just a verb or noun

Get-Command -verb "get"
Get-Command -verb "set"
Get-Command -noun "service"
Get-Command -noun "ChildItem"
Get-Command -noun "WmiObject"

#endregion cmdlets

#region code section 2

Get-Help Get-Command -examples
Get-Help Get-Command -full
Get-Help Get-Command -Detailed
Get-Help Get-Command -Online
#endregion code section 2

#region code block 3

# -? option can be used to get quick help, it' a short cut to use as desbribed below.

Get-Command -?
#endregion code block 3