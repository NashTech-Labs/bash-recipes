During program termination, normally the program exits and returns the shell to use. To determine whether the program exited successfully or not we need to check its exit status.

Exit Code    | Meaning
---------    | -------
0 (Normal)   | Normal setup. 
1 (SIGHUP)   | Hangup, line disconnected.
2 (SIGHINT)  | Terminal interrupt, ctrl+c.
3 (SIGQUIT)  | Quit Key, child processes to die before terminating.
9 (SIGKILL)  | kill -9  cannot trap this status.
15 (SIGTERM) | command's default action.
19 (SIGSTOP) | stop, usually using ctrl+z.

Use `kill -l` to list all the signals.  

usage: `trap echo "hey this is an usual exit"`


