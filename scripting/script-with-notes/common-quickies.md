###### UNIX special chars:
\ / ; , . ~ $ # & * ( ) [ ] ' " ` + - ! ^ = | < >
use \ to escape these characters.

###### shells:
- An environment where programs and scripts run. 
- many flavors: bourne (sh), bash (bash), korn (ksh)

###### scripts:
- a list of commands, listed in the order of execution, create a script.
- make sure to have:
  - comments in a script use # for that.
  - have loops where you can. 
  - create functions in a script for better representation. 

- Functions:
  - use it when there's a piece of code you'd want to use over and over. 
  - use keyword: function before to declare a function.
  - it is possible to declare a function system-wide.

###### Executing the script.
- make sure to include the shell directive at the top of the script.
- use the commmand as follows: `shell-name location-of-script`

###### Commenting and styles in scripts:
- A quality script is defined as follows:
  - easy to read
  - easy to maintain
  - useful comments wherever required.
  - clear purpose of using a function, variable, files and Input and Output.

- For example check the script [here](script/script-template.sh)
