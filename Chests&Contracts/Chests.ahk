;!!!!!! THIS IS FOR RESOLUTION 1366x768 (WINDOWED) !!!!!!!!
global chestLocationX = 164
global chestLocationY = 680
global buyX = 1103
global buyY = 681
global counter = 0

Gui, Add, text, , Enter number of chests to buy #:
Gui, Add, Edit, vchestsToBuy
Gui, Add, Button, default, OK
Gui, Show
Return

GuiClose:
ButtonOK:
Gui, Submit

^t::                                              
{
 while(chestsToBuy > counter){
   MouseMove, chestLocationX, chestLocationY
   sleep, 50
   MouseClick
   sleep, 50
   MouseMove, buyX, buyY
   sleep, 400
   MouseClick
Sleep, 2000
   counter++
 }
}

`::
{
	Pause, , 1
	return
}
