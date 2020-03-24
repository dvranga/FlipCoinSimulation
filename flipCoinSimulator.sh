#Flip the Coin to Display Heads or Tails
#declare -A Singlet
echo enter value how many times to iterate the loop
read number
declare -A Doublet
Doublet[HH]=0;
Doublet[TH]=0
Doublet[HT]=0;
Doublet[TT]=0;
for (( i=0; i<$number; i++ ))

do
	Flip=$(( $RANDOM%4 ))
	if [ $Flip -eq 0 ]
	then
		 Doublet[HH]=$(((${Doublet[HH]})+1));
	elif [ $Flip -eq 1 ]
	then
		Doublet[HT]=$(((${Doublet[HT]})+1));
	elif [ $Flip -eq 2 ]
	then
		Doublet[TH]=$(((${Doublet[TH]})+1));
	else
		 Triplet[TT]=$(((${Doublet[TT]})+1));
	fi
done
for key in ${!Doublet[@]}
do
	Doublet[$key]=$(( (${Doublet[$key]} * 100) / $number));
	echo "$key:${Doublet[$key]}"
done
