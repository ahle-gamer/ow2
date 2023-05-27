#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


Numpad1::
SuperSlam:
    Send, {RButton down}
    Sleep, 1000
    Send, {RButton up}
    Sleep, 400
    Send, {LShift}
    ; MouseMove, 920, 500, 100
    Return

Numpad2::
    SendMode, Event
    MouseMove, 960, 400, 100
    SendMode, Input
    Return