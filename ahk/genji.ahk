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

p::z

l::q

SC028::d

m::s

RControl::Space

SC15D::LControl

Left::v

,::LShift

o::a

Qmelee:
    if(GetKeyState("LButton", "P")) {
        SendInput, v
        return
    }
    SendInput, {LShift}
    return

WheelDown::
Turn180:
	loop 8
	{
		DllCall("mouse_event", "UInt", 0x01, "UInt", -338, "UInt", 0)
		sleep 1
	}
    return

WheelUp::
	SendInput, {ShiftDown}
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