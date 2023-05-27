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
