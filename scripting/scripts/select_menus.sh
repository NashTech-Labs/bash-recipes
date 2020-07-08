#!/bin/bash

oPS3=$PS3
PS3="Please choose a task (ENTER to list options): "
select task in Quit "View Hosts" "Edit Hosts" "Search Hosts" "Nameservice Lookup" "DNS Lookup"
do
   if [ ! -z "$task" ]; then
       case $REPLY in
           1) echo "GOODBYE !!"
               break
               ;;
           2) cat /etc/hosts
               break
               ;;
           3) ${EDITOR:-vi} /etc/hosts
               break
               ;;
           4)  read -p "Enter the search term: " search
               grep -w $search /etc/hosts || echo "\"$search\" not found."
               break
               ;;
           5)  read -p "Enter the host name: " search
               getent hosts $search || echo "\"$search \" not found."
               break
               ;;
           6)  read -p "Enter the host name: " search
               nslookup $search || echo "\"$search\" Not found."
               break
               ;;
       esac
    fi
done


