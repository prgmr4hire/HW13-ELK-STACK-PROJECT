cat 0312_Dealer_schedule | grep '11:00:00 PM' | awk -F" " '{print $1, $2, $5, $6}'
