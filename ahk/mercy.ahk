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


XButton1::
    SendInput, e
    Sleep, 150
    SendInput, {Click Right}
    return

XButton2::
    SendInput, e
    Sleep, 150
    SendInput, {Click}
    return

WheelUp::
Superjump:
    SendInput, {LShift}
    Sleep, 100
    SendInput, {Ctrl}
    return

WheelDown::
BackwardGA:
    Send, {s down}
    Sleep, 100
    SendInput, {k}
    Sleep, 100
    SendInput, {l}
    Sleep, 1000
    Send, {s up}
    return



