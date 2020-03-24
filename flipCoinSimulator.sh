#Flip the Coin to Display Hs or Ts
#declare -A Singlet
echo enter value how many times to iterate the loop
read number
declare -A Singlet
echo SingletCombination
echo
Singlet[Heads]=0;
Singlet[Tails]=0;
for (( i=0; i<$number; i++ ))

do
	Flip=$(( $RANDOM%2 ))
	if [ $Flip -eq 1 ]
	then
		 Singlet[Heads]=$(((${Singlet[Heads]})+1));
	else
		 Singlet[Tails]=$(((${Singlet[Tails]})+1));
	fi
done
for key in ${!Singlet[@]}
do
	Singlet[$key]=$(( (${Singlet[$key]} * 100) / $number));
	echo "$key:${Singlet[$key]}"
done

echo DoubletCombination
echo
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

echo TripletCombination
declare -A Triplet
Triplet[HHH]=0;
Triplet[TTT]=0
Triplet[HHT]=0;
Triplet[HTH]=0;
Triplet[THH]=0;
Triplet[THT]=0
Triplet[TTH]=0;
Triplet[HTT]=0;
for (( i=0; i<$number; i++ ))

do
	Flip=$(( $RANDOM%8 ))
	if [ $Flip -eq 0 ]
	then
		 Triplet[HHH]=$(((${Triplet[HHH]})+1));
	elif [ $Flip -eq 1 ]
	then
		Triplet[TTT]=$(((${Triplet[TTT]})+1));
	elif [ $Flip -eq 2 ]
	then
		Triplet[HHT]=$(((${Triplet[HHT]})+1));
	elif [ $Flip -eq 3 ]
	then
		 Triplet[HTH]=$(((${Triplet[HTH]})+1));
	elif [ $Flip -eq 4 ]
	then
		 Triplet[THH]=$(((${Triplet[THH]})+1));
	elif [ $Flip -eq 5 ]
	then
		Triplet[THT]=$(((${Triplet[THT]})+1));
	elif [ $Flip -eq 6 ]
	then
		Triplet[TTH]=$(((${Triplet[TTH]})+1));
	else
		 Triplet[HTT]=$(((${Triplet[HTT]})+1));
	fi
done

for key in ${!Triplet[@]}
do
	Triplet[$key]=$(( (${Triplet[$key]} * 100) / $number));
	echo "$key:${Triplet[$key]}"
done
array=($(for value in ${Triplet[@]}
do
	echo ${Triplet[$value]}
done | sort ))
echo ${array[@]}
