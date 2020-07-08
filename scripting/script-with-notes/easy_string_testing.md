###### String Testing in shell
We often need to test strings that the user inputs or specifies through the command-line as an argument. Now testing a simple word like Test can be really challenging as a user can write the string as test, TEST, tEsT ....  

As a solution, it is better to have the string be translated to Uppercase or lowercase letters for easier comparison. 

We can use `tr` to help us with that.

usage: `UPPERCASEVAL=$(echo $VARIABLE | tr '[a-z]' '[A-Z]')`
       `DOWNCASEVAL=$(echo $VARIABLE | tr '[A-Z]' '[a-z]')`

we can also make the conversion to choice of cases automatic by setting the attribute of the variable as follow:

``` 
typeset -u $VARIABLE        # use -l for lowercase conversion.
VARIABLE=true
echo "$VARIABLE"
```

