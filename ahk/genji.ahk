#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

;Like comment or subscribe to Jaredt17!
castPointOrb := 300

;create an exit button
^0::ExitApp ; control + 0 exit immediately

;Alt P suspend script for chat
!p::Suspend


+q::
    SendInput, {q down}
    SendInput, e
    SendInput, {q up}
    return

+d::
    SendInput, {d down}
    SendInput, e
    SendInput, {d up}
    return

+z::
    SendInput, e
    return

+s::
    SendInput, {s down}
    SendInput, e
    SendInput, {s up}
    return

WheelDown::
	Send, {Space}
	sleep 100
	loop 8
	{
		DllCall("mouse_event", "UInt", 0x01, "UInt", -340, "UInt", 0)
		sleep 1
	}
	sleep 200
    return

F3::
	Send, {Space}
	sleep 100
	loop 1
	{
		DllCall("mouse_event", "UInt", 0x01, "UInt", -100, "UInt", 0)
		sleep 1
	}
	sleep 200
    return