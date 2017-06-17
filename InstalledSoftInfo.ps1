# The following script is to get installed software information on a given system

#region Obtaining info of an installed program

Get-WmiObject -Class "Win32_Product" | Where-Object {$_.name -like "*winflash*"} | Format-Table -Property Name, Version

$computers = @("computer1","computer2","computer3")

for($i=0; $i -lt $computers.Count; $i++){

echo "For computer " $computers[$i]

Get-WmiObject -ComputerName $computers[$i] -Class "Win32_Product" | Where-Object {$_.name -like "*winflash*"} | Format-Table -Property Name, Version

}


#endregion
