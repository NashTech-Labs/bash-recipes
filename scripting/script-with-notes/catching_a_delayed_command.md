###### Catching A Delayed Command

!note: add more details

- To catch an output of any command which has a delayed output. When we miss it by some window of time. 

here's how to do it:

```
OUTPUT="/tmp/output.log"
cat /dev/null > $OUTPUT

until [ -s $OUTPUT ] 
do
   curl localhost:9090 >> $OUTPUT
done

```

The loop configured by until will keep on running as long as we get the OUTPUT file size to more than 0. As soon as the the size of the file increases the command will stop running. We are also catching the stderr and stdout together so even if we get the error it will be registered in the logs.
