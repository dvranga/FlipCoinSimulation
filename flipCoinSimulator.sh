#Flip the Coin to Display Heads or Tails
#declare -A Singlet
echo enter value how many times to iterate the loop
read number
declare -A HashMap
HashMap[head]=0;
HashMap[tail]=0;
for (( i=0; i<$number; i++ ))

do
	Flip=$(( $RANDOM%2 ))
	if [ $Flip -eq 1 ]
	then
		 HashMap[head]=$(((${HashMap[head]})+1));
	else
		 HashMap[tail]=$(((${HashMap[tail]})+1));
	fi
done
Headsoccure=${HashMap[head]};
Tailsoccure=${HashMap[tail]};
x=100
headpercent=$(($(($Headsoccure * $x))/$number))
tailpercent=$(($(($Tailsoccure * $x))/$number))
echo headpercent=$headpercent
echo tailpercent=$tailpercent

