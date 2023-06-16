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
SC045::Suspend

p::z

l::q

SC028::d

m::s

RControl::Space

SC15D::Down

Left::v

,::e

SC01A::a

; strafing
Enter::
	Loop, 5 {
		
		SendInput, {q down}
		Sleep, 500
		SendInput, {q up}
		SendInput, {d down}
		Sleep, 1000
		SendInput, {d up}
		SendInput, {q down}
		Sleep, 500
		SendInput, {q up}
	}
	return

/* 
Qmelee:
    if(GetKeyState("LButton", "P")) {
        SendInput, v
        return
    }
    SendInput, {LShift}
    return 
*/

WheelDown::
Turn180:
	loop 8
	{
		DllCall("mouse_event", "UInt", 0x01, "UInt", -338, "UInt", 0)
		sleep 1
	}
    return

WheelUp:
	SendInput, e
	Sleep, 500
	Gosub, Turn180
	Sleep, 500
	SendInput, {Click}	
    return

turn100:
	Send, {Space}
	sleep 100
	loop 1
	{
		DllCall("mouse_event", "UInt", 0x01, "UInt", -100, "UInt", 0)
		sleep 1
	}
	sleep 200
    return