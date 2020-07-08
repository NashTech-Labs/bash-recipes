###### Ways to process line by line.

- We're going to use the file descriptors in order to process files.

###### Command Syntax

- we are going to use for/while loops in order to read the file line-by-line.
- `read` command is used as it is very flexible in reading the file as individual strings or as an entire line. 
  - `line` command is another alternative to use full line of text. 
- the use of loop is also a factor to be considered as decisive.

###### File Descriptors
- file descriptors help us reference, copy and move a file. 
- there are 3 common FDs:
  - 0 stdin
  - 1 stdout
  - 2 stderr
 comman usage: `command 2>&1 here we are redirecting the stderr to stdout.`


>note: we're going to read a file which is of ~1MB size.

**Method 1**
----
Cat while read line function

```
function read_file() {
>$OUTFILE
cat $INFILE | while read LINE
do
  echo "$LINE" >> $OUTFILE
done
}

```

**Method 2**
----
while read line bottom

```
function read_file() {
>$OUTFILE
while read LINE
do
  echo "$LINE" >> $OUTFILE
done < $INFILE
```
imporvements being cat is eliminated by using file descriptor here during redirection. 
this method is known to have better execution than the previous one. 


**Method 3** (only few os support line method)
----
cat while Line line
```
function read_file(){

>$OUTFILE
cat $INFILE | while LINE=`line`
do 
  echo "$LINE" >> $OUFILE
done

 }
```
change being that we are now using the `line` command to allocate the line and not read. Line is used to grab one line at a time. 

**Method 4**
while LINE line bottom
```
function read_file() {
>$OUTFILE
while LINE=`line` #you can use $(line) to see if any improvements
do
  echo "$LINE" >> $OUTFILE
done < $INFILE
}
```

this is one of the poor choices of writing the logic of reading the file. 

**Method 5**
cat while LINE line cmdsub
similar to [Method 3 ](#Method 3)

```
function read_line() {
>$OUFILE
cat $INFILE | while LINE=$(line) 
do
  echo "$LINE" >> $OUTFILE
done
}
```
**Method 8**
Using file descriptors
for stdin we are going to use FD 3, 0
for stdout we are going to use FD 4, 1
Vaild range of FDs are 0-19

while read LINE line FD IN

```
function read_file(){

>$OUTFILE
exec 3<&0       # redirect the input FD to 3 
exec 0< $INFILE #redirecting the input file to input

while read LINE
do
 echo "$LINE" >> $OUTFILE
done

exec 0<&3      # redirect the fd 3 to fd 0
exec 3>&-      # close the stdin fd.

}
```


