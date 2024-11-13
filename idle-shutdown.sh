#!/bin/bash
threshold=0.15      # CPU load threshold to determine idle state
count=0             # Continuous idle minutes count
wait_minutes=30     # Minimum continuous idle minutes required for shutdown

while true
do
  load=$(uptime | sed -e 's/.*load average: //g' | awk '{ print $1 }')
  load="${load//,}"

  res=$(echo "$load < $threshold" | bc -l)
  
  if (( res )); then
    echo "Idling.."
    ((count+=1))
  else
    count=0
  fi

  echo "Idle minutes count = $count"

  if (( count >= wait_minutes )); then
    echo "Shutting down due to 60 minutes of idle time."
    sleep 60
    sudo poweroff
  fi
  
  sleep 60
done
