<#

String interpolation is a feature which let strings be more useful by interprating variable values, expressions within string.
#>

#If you include a variable in double quoted string, it get interpolated to value stored in variable.
$pi = 3.14

"The value of pi is $pi"


#However the values won't be interpolated in sinle quoted strings
'The value of pi is $pi'


#If in case you want not to haave value of a variable interpolated in a string, use escape sequence character to let interpreter now.
"The value of pi is `$pi"


#String interpolation can also work in here string

$hereStr = @"

The value of 

pi is $pi

"@

$hereStr


#To let expressions evaluated in string , it needs to be wrapped in $() .
$r = 10
"The area of a circle is $($pi*$r*$r)"

<#output
PS C:\WINDOWS\system32> "The area of a circle is $($pi*$r*$r)"
The area of a circle is 314
#>

#########################################################################################
#####################################String formatting ##################################
#########################################################################################


$name = "Badal Singh"
$age = "30 years"


#as powershell is built on top of .Net framewrok, you can use C# like string formating function to format a string

[string]::Format("Hello, My name is {0} and my age is {1}",$name,$age)

#{0},{1} is a placeholder to indicate the variable to use in the comma sepataed list.
<#Output
PS C:\WINDOWS\system32> [string]::Format("Hello, My name is {0} and my age is {1}",$name,$age)
Hello, My name is Badal Singh and my age is 30 years
#>

#the shortcut for formatting s astirng like using a cmdlet is as following, where -f indicate that the string preceeding it need to be formatted 
#with value in following list of variables.

"Hello, My name is {0} and my age is {1}" -f $name,$age
<#Output
PS C:\WINDOWS\system32> "Hello, My name is {0} and my age is {1}" -f $name,$age
Hello, My name is Badal Singh and my age is 30 years
#>

#We can reuse placeholders in a string to format it, abd use multiple refrences.

"Hello My name is {0} and my age is {1}. Please print my name as {0}" -f $name,$age
<# Output
PS C:\WINDOWS\system32> "Hello My name is {0} and my age is {1}. Please print my name as {0}" -f $name,$age
Hello My name is Badal Singh and my age is 30 years. Please print my name as Badal Singh
#>


#Powershell, predefined formats

#region Number N formatting

<#
 Format a decimal number by removing its all digits after decimal the first digit 0,1 is a placeholder to use the variable in list 
 0 for first and 1 for second variable in list. value after : N0 indicates how many places after decimal has to be formatted.
#>
"The First number formatted is {0:N0} and second number is {1:N0}" -f 8785657.676, 999987867.467
<# Output
PS C:\WINDOWS\system32> "The First number formatted is {0:N0} and second number is {1:N0}" -f 8785657.676, 999987867.467
The First number formatted is 8,785,658 and second number is 999,987,867
#>


"The First number formatted is {0:N1} and second number is {1:N1}" -f 8785657.676, 999987867.467
<#Output
PS C:\WINDOWS\system32> "The First number formatted is {0:N1} and second number is {1:N1}" -f 8785657.676, 999987867.467
The First number formatted is 8,785,657.7 and second number is 999,987,867.5
#>

"The First number formatted is {0:N1} and second number is {1:N5}" -f 8785657.676, 999987867.467
<# Output : Note that for second number we asked for 5 decimal places so the formatting would append 2 more zeros after decimal places.
PS C:\WINDOWS\system32> "The First number formatted is {0:N1} and second number is {1:N5}" -f 8785657.676, 999987867.467
The First number formatted is 8,785,657.7 and second number is 999,987,867.46700
#>

#To put while spaces before formatted string

"Lets put 5 spaces befor {0,8:N0}" -f 786
<#Output
PS C:\WINDOWS\system32> "Lets put 5 spaces befor {0,8:N0}" -f 786
Lets put 5 spaces befor      786
#>


#endregion


#region Currentcy Formatting
"Total turnout this year is {0:C2}" -f 23445566778.65567
<#Output
PS C:\WINDOWS\system32> "Total turnout this year is {0:C2}" -f 23445566778.65567
Total turnout this year is $23,445,566,778.66
#>

#endregion

#region Percentage formatting

"percentage formatted form of .2536 is {0:P2}" -f .2536

<#output 
"percentage formatted form of .2536 is {0:P2}" -f .2536
percentage formatted form of .2536 is 25.36 %
#>
#endregion


#region Hexadecimal formatting

"a decimal number 1443 in hex is {0:X0}" -f 1443
"a hexadecimal number 1443 in hex is {0:X0}" -f 0x5A3
#endregion

#region Decimal

"The formatted number is {0:D0}" -f 1443
"The formatted number is {0:D1}" -f 1443 # 1443 + 0 = 1443 , put zeros in front of number if number with D is greater than number of digits to format
"The formatted number is {0:D4}" -f 1443 # 1443 + 0000 = 1443
"The formatted number is {0:D5}" -f 1443 # tries 1443 + 00000 = 01443
<#output
"The formatted number is {0:D5}" -f 1443
The formatted number is 01443
#>

"The formatted number is {0,8:D5}" -f 1443 # note that it has prefixed 3 additional spaces befor 01443
<#output
"The formatted number is {0,8:D5}" -f 1443
The formatted number is    01443
#>

#Important Note: Decimal formatting can only be done on Integres , if you try to run it on other numbers like 1443.1 , it will throw an error.

"The formatted number is {0:D0}" -f 1443.1
#endregion

#region Custom Date formatting

"Today is {0:MM/dd/yyyy}" -f $(Get-Date)

"Today is {0:M/d/yy}" -f $(Get-Date)
"Today is {0,10:MM/dd/yyyy}" -f $(Get-Date) #Number 10 is to make formatting in 10 characters.
"Today is {0,10:MMddyyyy}" -f $(Get-Date)
"Now is {0,10:MM/dd/yyyy hh:mm:ss}" -f $(Get-Date)


#endregion

#region Custom formatting for numbers
# pound symbol (#) means a number or space, if no number then space."Formatted number 1443 looks like {0:#,#0}" -f 1443
"Formatted number 1443 looks like {0:$#,#0}" -f 1443 #Currency formatting


#endregion

#region
#you can pass an arithmetic operation as an argument for formatting

"The division of 10 by 3 is {0}" -f (10/3)
<#output
"The division of 10 by 3 is {0}" -f (10/3)
The division of 10 by 3 is 3.33333333333333
#>




"The division of 10 by 3 is {0:0.000000000}" -f (10/3)
<#output
"The division of 10 by 3 is {0:0.000000000}" -f (10/3)
The division of 10 by 3 is 3.333333333
#>
#endregion





