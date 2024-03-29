﻿
/*
Language:           English
Original Author:    Hirusha Adikari

/////////////////////////////////////////////////////////////////////////////////

Introduction:
Remember to run AutoHotkey with administrator privileges or it won't work.
Everthing in this script can be modified to your needs. BUT BE CAREFUL!

*/

;Delays
#SingleInstance, Force
SetWorkingDir %A_ScriptDir%

Global IntMenuDelay := 200
Global KeySendDelay := 100

Global KeyPressDuration := 70
Global PhoneDelay := 500

CFG = GTA Quick.ini

setkeydelay, %KeySendDelay%, %KeyPressDuration%

Gui, Add, Text,, ToggleKey:
Gui, Add, Text,, Get Car Key:
Gui, Add, Text,, Mors Mutual Key:
Gui, Add, Text,, Lester Key:
Gui, Add, Text,, Armor Key:
Gui, Add, Text,, Pegasus Key:
Gui, Add, Text,, Lamar Key:
Gui, Add, Text,, Buzzard Key:
Gui, Add, Text,, Snack Key:
Gui, Add, Text,, QuickRace Key:
Gui, Add, Text,, Merryweather Key:
Gui, Add, Text,, VolumeDown Key:
Gui, Add, Text,, VolumeUp Key:
Gui, Add, Text,, JoinFriends Key:
Gui, Add, Text,, JoinCrewMembers Key:
Gui, Add, Text,, Exit Macro Key:

Gui, Add, Hotkey,vPassiveToggleKey ym ,Numpad0
Gui, Add, Hotkey,vGetCarKey,Numpad1
Gui, Add, Hotkey,vMorsMutualKey,Numpad2
Gui, Add, Hotkey,vLesterKey,Numpad3
Gui, Add, Hotkey,vArmorKey,Numpad4
Gui, Add, Hotkey,vPegasusKey,Numpad5
Gui, Add, Hotkey,vLamarKey,Numpad6
Gui, Add, Hotkey,vBuzzardKey,Numpad8
Gui, Add, Hotkey,vSnackKey,Numpad7
Gui, Add, Hotkey,vQuickRaceKey,Numpad9
Gui, Add, Hotkey,vMerryweatherKey,NumpadMult
Gui, Add, Hotkey,vVolumeDownKey,NumpadAdd
Gui, Add, Hotkey,vVolumeUpKey,NumpadSub
Gui, Add, Hotkey,vJoinFriendsKey,NumpadDiv
Gui, Add, Hotkey,vJoinCrewMembersKey,Tab
Gui, Add, Hotkey,vExitKey,^Escape

IfExist, %CFG%
{ 
IniRead,Read_PassiveToggleKey,%CFG%,Hotkeys,Passive Toggle
IniRead,Read_GetCarKey,%CFG%,Hotkeys,Get Key
IniRead,Read_MorsMutualKey,%CFG%,Hotkeys,Mors Mutual
IniRead,Read_LesterKey,%CFG%,Hotkeys,Lester
IniRead,Read_ArmorKey,%CFG%,Hotkeys,Armor
IniRead,Read_PegasusKey,%CFG%,Hotkeys,Pegasus
IniRead,Read_LamarKey,%CFG%,Hotkeys,Lamar
IniRead,Read_BuzzardKey,%CFG%,Hotkeys,Buzzard
IniRead,Read_SnackKey,%CFG%,Hotkeys,Snack
IniRead,Read_QuickRaceKey,%CFG%,Hotkeys,QuickRace
IniRead,Read_MerryweatherKey,%CFG%,Hotkeys,Merryweather
IniRead,Read_VolumeDownKey,%CFG%,Hotkeys,Volume Down
IniRead,Read_VolumeUpKey,%CFG%,Hotkeys,Volume Up
IniRead,Read_JoinFriendsKey,%CFG%,Hotkeys,Join Friends
IniRead,Read_JoinCrewMembersKey,%CFG%,Hotkeys,Join CrewMembers
IniRead,Read_ExitKey,%CFG%,Hotkeys,Exit

GuiControl,,PassiveToggleKey,%Read_PassiveToggleKey%
GuiControl,,GetCarKey,%Read_GetCarKey%
GuiControl,,MorsMutualKey,%Read_MorsMutualKey%
GuiControl,,LesterKey,%Read_LesterKey%
GuiControl,,ArmorKey,%Read_ArmorKey%
GuiControl,,PegasusKey,%Read_PegasusKey%
GuiControl,,LamarKey,%Read_LamarKey%
GuiControl,,BuzzardKey,%Read_BuzzardKey%
GuiControl,,SnackKey,%Read_SnackKey%
GuiControl,,QuickRaceKey,%Read_QuickRaceKey%
GuiControl,,MerryweatherKey,%Read_MerryweatherKey%
GuiControl,,VolumeDownKey,%Read_VolumeDownKey%
GuiControl,,VolumeUpKey,%Read_VolumeUpKey%
GuiControl,,JoinFriendsKey,%Read_JoinFriendsKey%
GuiControl,,JoinCrewMembersKey,%Read_JoinCrewMembersKey%
GuiControl,,ExitKey,%Read_ExitKey%
}

Gui, Add, Button, gsave, save
Gui, Show,, GTA Online Quick MACRO’S
return 

save:
Gui, Submit

IfNotExist,%CFG%
{
IniWrite,%PassiveToggleKey%,%CFG%,Hotkeys,Passive Toggle
IniWrite,%GetCarKey%,%CFG%,Hotkeys,Get Key
IniWrite,%MorsMutualKey%,%CFG%,Hotkeys,Mors Mutual
IniWrite,%LesterKey%,%CFG%,Hotkeys,Lester
IniWrite,%ArmorKey%,%CFG%,Hotkeys,Armor
IniWrite,%PegasusKey%,%CFG%,Hotkeys,Pegasus
IniWrite,%LamarKey%,%CFG%,Hotkeys,Lamar
IniWrite,%BuzzardKey%,%CFG%,Hotkeys,Buzzard
IniWrite,%SnackKey%,%CFG%,Hotkeys,Snack
IniWrite,%QuickRaceKey%,%CFG%,Hotkeys,QuickRace
IniWrite,%MerryweatherKey%,%CFG%,Hotkeys,Merryweather
IniWrite,%VolumeDownKey%,%CFG%,Hotkeys,Volume Down
IniWrite,%VolumeUpKey%,%CFG%,Hotkeys,Volume Up
IniWrite,%JoinFriendsKey%,%CFG%,Hotkeys,Join Friends
IniWrite,%JoinCrewMembersKey%,%CFG%,Hotkeys,Join CrewMembers
IniWrite,%ExitKey%,%CFG%,Hotkeys,Exit
}

Hotkey, %PassiveToggleKey%, PassiveToggle
Hotkey, %GetCarKey%, GetCar
Hotkey, %MorsMutualKey%, MorsMutual
Hotkey, %LesterKey%, Lester
Hotkey, %ArmorKey%, SuperHeavyArmor
Hotkey, %PegasusKey%, Pegasus
Hotkey, %LamarKey%, Lamar
Hotkey, %BuzzardKey%, Buzzard
Hotkey, %SnackKey%, Snack
Hotkey, %QuickRaceKey%, QuickRace
Hotkey, %MerryweatherKey%, Merryweather
Hotkey, %VolumeDownKey%, VolumeDown
Hotkey, %VolumeUpKey%, VolumeUp
Hotkey, %JoinFriendsKey%, JoinFriends
Hotkey, %JoinCrewMembersKey%, JoinCrewMembers
Hotkey, %ExitKey%, Exitlabel
return


#IfWinActive ahk_class grcWindow

PassiveToggle:
InteractionMenu()
Send {Up 1}{Enter}{m}
return

;/////////////////////////////////////////////////////////////////////////////////

GetCar:
PhoneUp()
Send {Right}{Up}{Enter}
Send {Left}{Up 1}{Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

MorsMutual:
PhoneUp()
Send {Right}{Up}{Enter}
Send {Up 4}{Enter}
return	



;/////////////////////////////////////////////////////////////////////////////////

Lester:
PhoneUp()
Send {Right}{Up}{Return}
Send {Left 2}{Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

SuperHeavyArmor:
InteractionMenu()
Send {Down 2}{Enter}{Down}{Enter}
Send {Up 3}{Enter}{m}
return				

;/////////////////////////////////////////////////////////////////////////////////

Pegasus:
PhoneUp()
Send {Right}{Up}{Enter}
Send {Up 3}{Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

Lamar:
PhoneUp()
Send {Right}{Up}{Enter}
Send {Left 2}{Up 1}{Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

Buzzard:
InteractionMenu()
Send {Enter}{Up 2}{Enter}
Send {Down 4}{Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

Snack:
InteractionMenu()
Send {Down 2}{Enter}{Down 2}{Enter}   
Send {Down}{Enter 2}{m}       
return

;/////////////////////////////////////////////////////////////////////////////////

QuickRace:
PhoneUp()
Send {Left}{Enter}
Send {Down 7}{Enter}
Send {Enter 2}
return	

;/////////////////////////////////////////////////////////////////////////////////

Merryweather:
PhoneUp()
Send {Right}{Up}{Enter}
Send {Up 5}{Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

VolumeDown:
Send {ESC}
sleep, %PhoneDelay%

Send {Left 4}{Enter 2}
sleep, 500
Send {Down 3}{Enter}
sleep, 500
Send {Down}{Left 5}
Send {ESC 3}
return	

;/////////////////////////////////////////////////////////////////////////////////

VolumeUp:
Send {ESC}
sleep, %PhoneDelay%

Send {Left 4}{Enter 2}
sleep, 500
Send {Down 3}{Enter}
sleep, 500
Send {Down}{Right 5}
Send {ESC 3}
return	

;/////////////////////////////////////////////////////////////////////////////////

JoinFriends:
Send {ESC}
sleep, %PhoneDelay%

Send {Right 2}{Enter}
sleep, 2000
Send {Enter}
return	

;/////////////////////////////////////////////////////////////////////////////////

JoinCrewMembers:
Send {ESC}
sleep, %PhoneDelay%

Send {Right}
sleep, 1000
Send {Enter}
sleep, 500
Send {Down 5}{Enter}
sleep, 500
Send {Enter}
sleep, 500
Send {Enter 2}
return	

;/////////////////////////////////////////////////////////////////////////////////

;Functions

PhoneUp(){
Send {Up}
sleep, %PhoneDelay% 
} 
return

InteractionMenu(){
Send {m}
sleep, %PhoneDelay% 
} 
return

Exitlabel:
ExitApp
return