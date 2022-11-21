#!/bin/bash

echo "Has the client authorized the Pentest?"
echo "1 - Yes"
echo "2 - No"
read -r resp

case "$resp" in
"1")
    echo "THE PENTEST MAY BEGIN"
;;
"2")
    echo "PENDING PENTEST! WAITING FOR CLIENT APPROVAL"

;;
esac