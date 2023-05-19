#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent
#include FindText.ahk

;create an exit button
^0::ExitApp ; control + 0 exit immediately

;Alt P suspend script for chat
!p::Suspend

RButton::
    ; PixelSearch, FoundX, FoundY, 920, 500, 1000, 580, 0xFF0000, 150
    ; PixelSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xF12B4E, 50, Fast RGB    
    ; PixelSearch, FoundX, FoundY, 950, 530, 970, 550, 0xF12B4E, 40, Fast RGB
    WriteLog("Scan: Activated")
    Loop 10000 {
        If Not GetKeyState("RButton", "P") {
            Break
        }

        PixelSearch, FoundX, FoundY, 953, 537, 967, 547, 0xF12B4E, 50, Fast RGB
        if  ErrorLevel {
            ; WriteLog("Scan: 0")
        }
        else {
            Send {Click}
            WriteLog(FoundX "," FoundY)
            Sleep, 2000
            ; Break
        }
        Sleep, 5
    }
    WriteLog("Scan: End")

    Return

WriteLog(text) {
    FormatTime, CurrentDateTime,, dd-MMM-yyyy HH:mm:ss
    FileAppend, % CurrentDateTime " " A_MSec  ": " text "`n", logfile.txt ; can provide a full path to write to another directory
}