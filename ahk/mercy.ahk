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
    SendInput, {z down}
    Sleep, 900
    SendInput, {z up}
    return

WheelDown::
FadeBackward:
    SendInput, {LShift}
    Sleep, 100
    SendInput, {s down}
    Sleep, 900
    SendInput, {s up}
    return



