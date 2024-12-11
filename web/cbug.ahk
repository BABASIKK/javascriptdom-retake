#IfWinActive GTA:SA:MP
Gui, Add, text, , C-BUG by Wantedlab
Gui, Add, Button, gwanted, Wanted
Gui, Show,, Wanted c-bug
Return
OnOff = 0
Sleep = 5
GuiClose:
ExitApp
wanted:
MsgBox, 0, WANTEDLAB, `n`Version 64bits`n`======================`n`CREDITOS: Wanted`n`======================`n`включение capslock `n`======================`n`
return

capslock::
start:
OnOff:=!OnOff
return

LButton::
if(OnOff == 1) {
While GetKeyState("LButton", "P")
{
Click down Right
Sleep 1 , $Sleep$
click down Left
Sleep 1 , $Sleep$
click up Right
click up Left
Sleep 1 , $Sleep$
SendInput {vk43 down}
Sleep 1 , $Sleep$
SendInput {vk43 up}
Sleep 1 , $Sleep$
#noenv
setbatchlines -1
setkeydelay -1
}

} else {
send {LButton down}
while GetKeyState("Lbutton", "P")
	sleep 1
send {lbutton up}
}
return


