cat 0312_Dealer_schedule | grep '08:00:00 AM' | awk -F" " '{print $1, $2, $5, $6}'
