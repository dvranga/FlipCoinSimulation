#Flip the Coin to Display Heads or Tails
#declare -A Singlet
echo enter value how many times to iterate the loop
read number
declare -A HashMap
HashMap[headhead]=0;
HashMap[tailhead]=0
HashMap[headtail]=0;
HashMap[tailtail]=0;
for (( i=0; i<$number; i++ ))

do
	Flip=$(( $RANDOM%4 ))
	if [ $Flip -eq 0 ]
	then
		 HashMap[headhead]=$(((${HashMap[headhead]})+1));
	elif [ $Flip -eq 1 ]
	then
		HashMap[headtail]=$(((${HashMap[headtail]})+1));
	elif [ $Flip -eq 2 ]
	then
		HashMap[tailhead]=$(((${HashMap[tailhead]})+1));
	else
		 HashMap[tailtail]=$(((${HashMap[tailtail]})+1));
	fi
done
HeadHeadoccure=${HashMap[headhead]};
HeadTailoccure=${HashMap[headtail]};
TailHeadoccure=${HashMap[tailhead]};
TailTailoccure=${HashMap[tailtail]};
echo HeadHeadoccure=${HashMap[headhead]};
echo HeadTailoccure=${HashMap[headtail]};
echo TailHeadoccure=${HashMap[tailhead]};
echo TailTailoccure=${HashMap[tailtail]};
x=100
headheadpercent=$(($(($HeadHeadoccure * $x))/$number))
headtailpercent=$(($(($HeadTailoccure * $x))/$number))
tailheadpercent=$(($(($TailHeadoccure * $x))/$number))
tailtailpercent=$(($(($TailTailoccure * $x))/$number))
echo headheadpercent=$headheadpercent
echo headtailpercent=$headtailpercent
echo tailheadpercent=$tailheadpercent
echo tailtailpercent=$tailtailpercent
