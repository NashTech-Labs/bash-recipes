#!/bin/bash
#
# SCRIPT: reading-arguments-using-shift.
# AUTHOR: Vinay
# DATE:   March 23 2020
# REV:    1.1.T (Valid are A, B, D, T and P)
#          (For Alpha, Beta, Dev, Test and Production)
#
#
# PLATFORM: All the linux flavours.
# 
# PURPOSE:  Reads arguments supplied.
# REV LIST:
#    DATE        : March 23 2020
#    BY          : Vinay
#    MODIFICATION: Initial writeup.
# 
# set -n   # Uncomment to check script syntax, without execution.
#          # NOTE: Do forget comment it back as it won't allow the 
#          # the script to execute.
#
# set +x   # Uncomment this for debugging this shell script.
#
#
################################################################
#          Define Files and Variables here                     #
################################################################
TOTAL=0             # counter to keep track of read args.


################################################################
#          Define Functions here                               #
################################################################



################################################################
#          Beginning of Main                                   #
################################################################

# Start: while loop
while true
do
    TOTAL=`expr $TOTAL + 1`   # increment when argument is read.
    TOKEN=$1                  # Point to the argument using token.
    echo $TOKEN
    shift                     # here we shift $2 to become $1

done

echo "Total number of arguments: $TOTAL"

# End of script
