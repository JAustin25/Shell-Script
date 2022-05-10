loop="y"
while [ $loop = "y" ]; do
        echo "--------------------------"
	echo "Andres, John Austin T."; 
	echo "BSCS 2"; 
	echo "TF (8:00-9:30)"; 
	echo "--------------------------"
	echo "Choices"
	echo "A = Check if the user is allowed to acquire a driver's license"
	echo "B = Exit"
	echo " "
	echo "choice: "; 
	read Choice
if [ $Choice = "A" ]; then
	echo "--------------------------"
	echo "Enter the Following"
	echo "The Current Year: "; read c_year
	echo "Your Birth Year: "; read b_year
        echo "--------------------------"
	let x=c_year;
	let y=b_year;
	let z=x-y;
	echo "Your Age: $z" 
		if [ $z -ge 18 ]
		then
			echo "--------------------------"
			echo "You are eligible to apply for a driver's license"
			echo "--------------------------"
			let km=z-18
			let total_km=km*1000
			echo "You have driven $total_km kilometers"
		else 
			let req_Age=18-z
			echo "You're not 18 yet.."
			echo "You should wait for $req_Age more years before you are allowed to acquire a driver's license"
		fi
echo "Do you wish to continue? Press y (Yes) and any keys for (No)"; read loop
	
else
echo "Goodbye and Thankyou"; let loop="x"
fi
done

