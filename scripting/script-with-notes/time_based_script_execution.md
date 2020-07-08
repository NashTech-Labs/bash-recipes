###### Time based Execution of Scripts.
 We'd like the scripts to run in a timely manner e.g at a specific time. 

###### CronTables

A table that is read by the system every minute and will execute the any entry that is eligible for execution. 

Any user can create a cron table. Create cron table using the following command: 
`crontab -e ` It opens the editor (Vi) where you can input the script with time pattern to schedule it by. 

`crontab -l` Since each user has their own crontab, we can also see how many cron jobs are in the table using this command.

###### Syntax for entry in crontab

here's one entry:

```

15 3 8 1 * /location/of/my/script.sh 2>&1 >/dev/null
|  | | | | |
|  | | | | |_____ location of your script file.
|  | | | |_______ Day of the week (0-6 Sunday to Saturday)
|  | | |_________ Month of the year (1-12)
|  | |___________ Day of the month (1-31)
|  |_____________ Hour of the day (0-23)
|________________ Minute of the hour (0-59)

```

###### at Command

Like a cron table, we have `at` used to execute a particular script once. This will show the output on the shell once the job finishes on the shell itself iff the output isn't redirected.

We can allow certain people from using at by using the following files:
`at.allow` and `at.deny`

usage: `echo '/some/script.sh | at now + 10 minutes'`  
alternatively, 
 ```
  >at now + 10 minutes
   /locations/of/script.sh
   ctrl+D
 ```

running in batch:
 -  like at, batch only executes the specified commands when the system permits. It check the load average of the system and if it is lower than 1.5 then it executes the instruction specified by the user.

 - There are three types of queues to differ between the jobs specified by at, batch:
   - a : this queue consists of jobs specified using at.
   - b : this queue consists of jobs specified using batch.
   - = : this queue consists of jobs currently running. 
   
   We can access each queue by using the command: `at -q [a|b|=]`
   To get the default listing use: `at -l`
