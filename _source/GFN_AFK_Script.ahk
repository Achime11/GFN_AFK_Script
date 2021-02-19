; GeForce NOW ANTI-AFK By Achime11

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn    ; Enable warnings to assist with detecting common errors.
SendMode Input    ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.
SetTitleMatchMode 2
SetWinDelay 1
SysGet, MonitorCount, MonitorCount
SysGet, Monitor, Monitor, 1
Loop
{
    WinMove, on GeForce NOW,, 1, 0, %MonitorRight%, %MonitorBottom%
    Sleep, 333
    WinMove, on GeForce NOW,, 0, 0, %MonitorRight%, %MonitorBottom%
    Sleep, 333
    Sleep, 240000
}
Return