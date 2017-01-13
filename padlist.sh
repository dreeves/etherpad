#!/bin/sh

mysql -u {sql_user} -p{sql_pass} etherpad -e 'select store.key from store' | grep -Eo '^pad:[^:]+' | sed -e 's/pad://' | sort | uniq -c | sort -rn | awk '{if ($1!="2") {print $2 }}'
