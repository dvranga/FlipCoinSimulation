#Flip the Coin to Display Heads or Tails
#declare -A Singlet
echo enter value how many times to iterate the loop
read number
declare -A HashMap
HashMap[headheadhead]=0;
HashMap[tailtailtail]=0
HashMap[headheadtail]=0;
HashMap[headtailhead]=0;
HashMap[tailheadhead]=0;
HashMap[tailheadtail]=0
HashMap[tailtailhead]=0;
HashMap[headtailtail]=0;
for (( i=0; i<$number; i++ ))

do
	Flip=$(( $RANDOM%8 ))
	if [ $Flip -eq 0 ]
	then
		 HashMap[headheadhead]=$(((${HashMap[headheadhead]})+1));
	elif [ $Flip -eq 1 ]
	then
		HashMap[tailtailtail]=$(((${HashMap[tailtailtail]})+1));
	elif [ $Flip -eq 2 ]
	then
		HashMap[headheadtail]=$(((${HashMap[headheadtail]})+1));
	elif [ $Flip -eq 3 ]
	then
		 HashMap[headtailhead]=$(((${HashMap[headtailhead]})+1));
	elif [ $Flip -eq 4 ]
	then
		 HashMap[tailheadhead]=$(((${HashMap[tailheadhead]})+1));
	elif [ $Flip -eq 5 ]
	then
		HashMap[tailheadtail]=$(((${HashMap[tailheadtail]})+1));
	elif [ $Flip -eq 6 ]
	then
		HashMap[tailtailhead]=$(((${HashMap[tailtailhead]})+1));
	else
		 HashMap[headtailtail]=$(((${HashMap[headtailtail]})+1));
	fi
done
HeadHeadHeadoccure=${HashMap[headheadhead]};
TailTailTailoccure=${HashMap[tailtailtail]};
HeadHeadTailoccure=${HashMap[headheadtail]};
HeadTailHeadoccure=${HashMap[headtailhead]};
TailHeadHeadoccure=${HashMap[tailheadhead]};
TailHeadTailoccure=${HashMap[tailheadtail]};
TailTailHeadoccure=${HashMap[tailtailhead]};
HeadTailTailoccure=${HashMap[headtailtail]};

echo HeadHeadHeadoccure=${HashMap[headheadhead]};
echo TailTailTailoccure=${HashMap[tailtailtail]};
echo HeadHeadTailoccure=${HashMap[headheadtail]};
echo HeadTailHeadoccure=${HashMap[headtailhead]};
echo TailHeadHeadoccure=${HashMap[tailheadhead]};
echo TailHeadTailoccure=${HashMap[tailheadtail]};
echo TailTailHeadoccure=${HashMap[tailtailhead]};
echo HeadTailTailoccure=${HashMap[headtailtail]};
x=100
headheadheadpercent=$(($(($HeadHeadHeadoccure * $x))/$number))
tailtailtailpercent=$(($(($TailTailTailoccure * $x))/$number))
headheadtailpercent=$(($(($HeadHeadTailoccure * $x))/$number))
headtailheadpercent=$(($(($HeadTailHeadoccure * $x))/$number))
tailheadheadpercent=$(($(($TailHeadHeadoccure * $x))/$number))
tailheadtailpercent=$(($(($TailHeadTailoccure * $x))/$number))
tailtailheadpercent=$(($(($TailTailHeadoccure * $x))/$number))
headtailtailpercent=$(($(($HeadTailTailoccure * $x))/$number))
echo headheadheadpercent=$headheadheadpercent
echo tailtailtailpercent=$tailtailtailpercent
echo headheadtailpercent=$headheadtailpercent
echo headtailheadpercent=$headtailheadpercent
echo tailheadheadpercent=$tailheadheadpercent
echo tailheadtailpercent=$tailheadtailpercent
echo tailtailheadpercent=$tailtailheadpercent
echo headtailtailpercent=$headtailtailpercent


