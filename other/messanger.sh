#!/bin/bash 

sleep 5

declare message="Hey everyone. \n o see those numbers going by in the back groud. 
Sorry if its alittle fast but I only have five minutes. 
Esach number is a life lost to covid 19 in the United States. 
In the past three weeks we went from less then 20 deaths 
to 5000 deaths. I used to count at night the number who died 
from this and try to grap in my head around each number was a
person who died from this. Someones mother, father daughter,
friend, son, aunt, uncle. Counting helps me understand the 
 severity of the situation. heslps me want to social distance.
 Lets get some facts. No matter what we do 100,000 people  
 will die from this in the next few months. In reality with
 some states not enforcing lock downs the number is 
 probably going to higher.  it makes me so angry to see 
 people hanging out still or not staying 6 feet away from
 people in a store. By not implemnenting these simple 
things if you get infected statisics show that before
 you know you are sick you start a cycle of infecting 
 others that by 30 days you were the root of 406 
 people being sick. Lets do the mathg 2% of them will
die. That means you have a 81% chance of killing
someone. This is not being dramatic. This is not 
 the time for jokes to make you feel better. This
s a time for action. This is the time for social 
distance. We have not listened to science long 
enough. It takes 2 to 3 weeks of social distancing
to take an effect. So far i have not seen or heard of
social distancing through out the country. For those
who are social distancing i thank you. Being from NY
have family with risk factors who work in hospitals. 

This is us.....
This is now.....
This is happening...."





for word in $message 
		do 
			n=${#word}
			for (( c=0; c<=$n; c++ ))
			do
				character=${word:$c:1}
				printf "%c" $character

			if [ "$character" == '\n' ]; 
				then
					sleep .5
				elif [ "$character" == "." ]; 
				then
					sleep .3
				else
					sleep .1
				fi
			done 
			printf "%c" " " 
			sleep .12
		done
		
	sleep .1