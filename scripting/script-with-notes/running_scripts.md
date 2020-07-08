###### Output control:
How is the script going to run? Where will the output go?


###### Silently Run a script
- use redirection as follows:
`/path/to/script.sh 2>&1 > /dev/null`

this won't output anything on the screen. In `2>&1`, we are redirecting the  standard err (stderr) to standard output (stdout) and `> /dev/null` we are redirecting all the output to `/dev/null`.

- useful when we are specifying the cron jobs or deamon processes.



