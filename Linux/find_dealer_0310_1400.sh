cat 0310_Dealer_schedule | grep '02:00:00 PM' | awk -F" " '{print $1, $2, $5, $6}'
