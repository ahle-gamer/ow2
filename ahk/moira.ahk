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
FadeForward:
    SendInput, {LShift}
    Sleep, 100
    SendInput, {z down}
    Sleep, 800
    SendInput, {z up}
    return

WheelDown::
FadeBackward:
    SendInput, {s down}
    Sleep, 100
    SendInput, {LShift}
    Sleep, 800
    SendInput, {s up}
    return


ForceStaffRPSkew2:
    SendInput, Xbutton1
    SoundBeep, 1000, 50
    Sleep, 50 ; delai turning RP
    SoundBeep, 1000, 50
    Sleep, 50 ; delai turning RP
    SendInput, d
    Sleep, castPointRP+100 ; move your mouse to the destination of skew
    SendInput, r ; skew
    return

