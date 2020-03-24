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
