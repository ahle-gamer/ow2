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

F3::spin( 20, 10, 1000)
F4::spin(-30,  3, 2000)
F5::spin(-60,  2, 1000)

spin(amount, speed, durationMS) {
    end := A_TickCount + durationMS
    While A_TickCount < end
        MouseMove, amount, 0, speed, R ; 0 = fastest, 100 = slowest
}