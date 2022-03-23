#!/bin/bash
awk '{print $1,$2,$3,$4}' $1_Dealer_schedule | grep $2 | grep $3 | grep BlackJack 
