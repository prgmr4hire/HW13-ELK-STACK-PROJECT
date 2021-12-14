#!/bin/bash

GAME="$3"
if [[ $GAME == "all" ]]; then
   cat "$1"_Dealer_schedule | grep "$2" | awk -F" " '{print $1, $2 " -> ", $3, $4 ",", $5, $6 ",", $7, $8}'
else
   if [[ $GAME == "texas_hold_em" ]]; then
      cat "$1"_Dealer_schedule | grep "$2" | awk -F" " '{print $1, $2 " -> ", $7, $8}'
   else 
      if [[ $GAME == "roulette" ]]; then
         cat "$1"_Dealer_schedule | grep "$2" | awk -F" " '{print $1, $2 " -> ", $5, $6}'
      else
	 if [[ -z $GAME ]]; then
            cat "$1"_Dealer_schedule | grep "$2" | awk -F" " '{print $1, $2 " -> ", $5, $6}'
	 else
	    if [[ $GAME == "blackjack" ]]; then
	       cat "$1"_Dealer_schedule | grep "$2" | awk -F" " '{print $1, $2 " -> ", $3, $4}'
	    else
	       echo "Searching by game '$GAME' is not a valid operation"
	    fi
         fi
      fi
   fi
fi
