###### what are talking about:
 In this section we're gonna talk about some of the most command file permissions and what they mean.


###### File permission, suid and guid Programs.

Once we are done with writing a script we need to make sure that the script is able to run. We can provide the appropriate permissions to users to execute the script. 
We can control mode of the file to always execute as a particular user (suid) or as a memeber of the group (guid).

chmod _ _ _ _ somefile.sh

Placholder | Possible Values
---------- | --------
1          | `4` = set userid for execution; execute on behalf of owner.<br>`2` = set groupid for execution; execute on behalf of owner's group.<br>`6` = execute on behalf of user and group the owner belongs to.<br>`1` = sets the link permission to directories or sticky-bit.
2,3, 4     | `4` = read<br>`2` = write<br>`1` = execute<br> for echo owner, group, & others placeholders respectively.



