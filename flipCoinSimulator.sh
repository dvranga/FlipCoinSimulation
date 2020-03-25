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
count=1;
for key in ${!Singlet[@]}
do
	Singlet[$key]=$(( (${Singlet[$key]} * 100) / $number));
	abc[count++]=${Singlet[$key]}
	echo $key:${Singlet[$key]}
done
for (( i = 1; i < 3 ; i++ ))
do
   for (( j = $i; j < 3; j++ ))
   do
      if [ ${abc[$i]} -gt ${abc[$j]} ]; then
           t=${abc[$i]}
           abc[$i]=${abc[$j]}
           abc[$j]=$t
     fi
   done
done
echo ${abc[@]}
max=${abc[2]}
for key in ${!Singlet[@]}
do
if [ ${Singlet[$key]} -eq $max ]
then
echo "winning Combination is $key"
break
fi
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
		 Doublet[TT]=$(((${Doublet[TT]})+1));
	fi
done
count=1;
for key in ${!Doublet[@]}
do
	Doublet[$key]=$(( (${Doublet[$key]} * 100) / $number));
	abc[count++]=${Doublet[$key]}
	echo "$key:${Doublet[$key]}"
done

for (( i = 1; i < 5 ; i++ ))
do
   for (( j = $i; j < 5; j++ ))
   do
      if [ ${abc[$i]} -gt ${abc[$j]} ]; then
           t=${abc[$i]}
           abc[$i]=${abc[$j]}
           abc[$j]=$t
     fi
   done
done
echo ${abc[@]}
max=${abc[4]}
for key in ${!Doublet[@]}
do
if [ ${Doublet[$key]} -eq $max ]
then
echo "winning Combination is $key"
break
fi
done


echo TripletCombination
echo

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
count=1;
for key in ${!Triplet[@]}
do
	Triplet[$key]=$(( (${Triplet[$key]} * 100) / $number));
	abc[count++]=${Triplet[$key]}
	echo "$key:${Triplet[$key]}"
done

for (( i = 1; i < 9 ; i++ ))
do
   for (( j = $i; j < 9; j++ ))
   do
      if [ ${abc[$i]} -gt ${abc[$j]} ]; then
           t=${abc[$i]}
           abc[$i]=${abc[$j]}
           abc[$j]=$t
     fi
   done
done
echo ${abc[@]}
max=${abc[8]}
for key in ${!Triplet[@]}
do
if [ ${Triplet[$key]} -eq $max ]
then
echo "winning Combination is $key"
break
fi
done
