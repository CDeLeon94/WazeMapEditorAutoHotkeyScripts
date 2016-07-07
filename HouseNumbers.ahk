^h:: ;ctrl+h opens a dialog to enter the starting HN and increment
InputBox, startHN, Starting HN?, What is the first house number to fill?
InputBox, incrementHN, Increment, Increment by how much for each house? (You Can Use Negative numbers to count down)
startHN := startHN - incrementHN
IfWinExist, Waze Map Editor
    WinActivate ; use the window found above
else
    startHN = 0
return

^!h::startHN = 0 ;ctrl+alt+h clears the varaible causing the click action to do nothing

~LButton:: ;once the variables are set, clicking automatically enters the number 
if (startHN > 0)
{
	sleep 200
	startHN := startHN + incrementHN
	Send %startHN%{Enter}
	sleep 200
	Send h
}
return
