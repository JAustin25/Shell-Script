# Script Name: Menu
# By: John Austin T. Andres
# Date: 30/10/2020
# Purpose: Listing and Displaying
#========================================================
loop=y
while [ "$loop" = y ]
do
clear
tput cup 3 20; echo "Menu"
tput cup 4 9; echo "=============================="
tput cup 6 9; echo "A - List the files in your current working directory"
tput cup 7 9; echo "B - Display the calendar this month"
tput cup 8 9; echo "C - Display the date today"
tput cup 9 9; echo "D - Display the current working directory"
tput cup 10 9; echo "E - Exit: "
tput cup 11 9; echo "=============================="
tput cup 12 9; echo "Choice: " ;
tput cup 12 17;
read choice

    case $choice in
        [Aa])
           dir=$(dir)
            tput cup 15 9; echo "=============================="
            tput cup 16 9; echo "You chose A."
	    tput cup 17 9; echo "=============================="
	    echo "List of Files: $dir"
	    read -p "Press Enter to Continue."
            ;;
        [Bb])
            tput cup 15 9; echo "=============================="
            tput cup 16 9; echo "You chose B."
	    tput cup 17 9; echo "=============================="
	    tput cup 18 9; echo "Calendar"
	    tput cup 19 9; cal
	    tput cup 20 9; read -p "Press Enter to Continue."
            ;;
        [Cc])
            tput cup 15 9; echo "=============================="
            tput cup 16 9; echo "You chose C."
	    tput cup 17 9; echo "=============================="
	    current_date=$(date)
	    tput cup 18 9; echo "Current Date: $current_date"
	    tput cup 19 9; read -p "Press Enter to continue"
            ;;
	[Dd])
	    _mydir="$(pwd)"
            tput cup 15 9; echo "=============================="
            tput cup 16 9; echo "You chose D."
	    tput cup 17 9; echo "=============================="
	    tput cup 18 9; echo "Current Working Directory: $_mydir"
	    tput cup 19 9; read -p "Press Enter to continue"    
            ;;
        [Ee])
            break
            ;;
        *) tput cup 15 9; echo "invalid option $REPLY";;
    esac
done


