################## Wildcard characters

"Hello world!" -like "Hello*" #returns true if left hand side string starts with Hello and can have any number of characters following it
<#Output
"Hello world!" -like "Hello*"
True
#>

"Hello Powershell" -like "*Power*" #returns true if a string at left hand side of this expression contains Power in between , no matter what preceeds and succeed Power.
<#Output
"Hello Powershell" -like "*Power*"
True
#>

"Powershell is the Power" -like "?owershell is the Power" #If just want to match a single character use '?' mark.
<#Output
PS C:\WINDOWS\system32> "Powershell is the Power" -like "?owershell is the Power"
True
#>

"Powershell is the Power" -like "?ower*" #Little bit complex and mixed set of wild character which matches a single character at very first character and any number of characters at place of * symbol
<#Output
PS C:\WINDOWS\system32> "Powershell is the Power" -like "?ower*"
True
#>


"Badal1443" -like "Badal*[0-9]"
<#Output
PS C:\WINDOWS\system32> "Badal1443" -like "Badal*[0-9]"
True
#>

#If I try following, it will return false

"Badal1443" -like "Badal*[a-z]"
<#Output
PS C:\WINDOWS\system32> "Badal1443" -like "Badal*[a-z]"
False
#>