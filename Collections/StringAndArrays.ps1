#Learning String and arrays.

#region String

#String examples

"Hello Wolrd!"
<# Output:
PS C:\WINDOWS\system32> "Hello Wolrd!"
Hello Wolrd!
#>


'Hello World!'
<# Output:
PS C:\WINDOWS\system32> 'Hello Wolrd!'
Hello Wolrd!
#>


"I am using 'single quote' in doeble quotes"
<# Output:
PS C:\WINDOWS\system32> "I am using 'single quote' in doeble quotes"
I am using 'single quote' in doeble quotes
#>

'I am using "double quotes" in sinble quote'
<# Output:
PS C:\WINDOWS\system32> 'I am using "double quotes" in sinble quote'
I am using "double quotes" in sinble quote
#>


#Following complex scenarios to be discussed

#If I want to have dowble quotes shows as output within double quote string as followings.

"I am just saying ""Hello World!"" here in double quotes." 
<# Output:
"I am just saying ""Hello World!"" here in double quotes." 
I am just saying "Hello World!" here in double quotes.
#>

#If I need to have a single quote within a single quote string
'I Don''t lie.'
<#Output:
PS C:\WINDOWS\system32> 'I Don''t lie.'
I Don't lie.
#>

############################################################################################
###################################### Escape sequences ####################################
############################################################################################

#as in Java and other languages , we use a special escape sequence character in powershell, however the character is diff.
#Use the character shown as `(backtick) in a key just below the ESC key on keypad, and it might be on same key with sign ~.


#Most common Escape sequences

<#
`n , `r, `b(Doesn't work in ISE), `t
#>

#and to take any special meaning character literally , you can use backtick as shwon below

"I am paying `$100 for room rent"

#Here string , to use for long and extensive block of strings in multiple lines as shown below.

$hereStr = @"
Line 1
Lin2 
    indented line

end line here

"@

$hereStr

#Can be used in single quotes too

$hereStr1 = @'
Line 1
Lin2 
    indented line

end line here

'@

#endregion