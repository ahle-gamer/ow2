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


WheelDown::
    Send {s down}
    Sleep, 50
    SendInput, {LShift}
    Sleep, 100
    Send {s up}
    return


