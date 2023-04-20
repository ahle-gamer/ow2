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



WheelUp::
Superjump:
    SendInput, {LShift}
    Sleep, 1000
    SendInput, {Ctrl}
    return

WheelDown::
BackwardGA:
    Send, {s down}
    Sleep, 100
    SendInput, {LShift}
    Sleep, 1000
    SendInput, {Ctrl}
    Sleep, 1000
    Send, {s up}
    return



