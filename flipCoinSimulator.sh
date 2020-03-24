#Flip the Coin to Display Heads or Tails
echo press enter to flip the coin
read
Flip=$(( $RANDOM%2 ))
if [ $Flip -eq 1 ]
then
	echo Heads
else
	echo Tails
fi
