; GeForce NOW ANTI-AFK By Achime11

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn    ; Enable warnings to assist with detecting common errors.
SendMode Input    ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.  
SetTitleMatchMode 2     ; Set TitleMatchMode 2 -> 2 = A window's title can contain WinTitle anywhere inside it to be a match.  
SetWinDelay 1    ; Sets the delay that will occur after each windowing command, such as WinMove.

Loop
{
    if WinExist("on GeForce NOW")
    {
        WinGetPos, G_Xpos, G_Ypos, G_Width, G_Height ; Get X,Y position for the GeForce NOW window found by WinExist.
        ; Changes the position of the window to (G_Xpos,g_Ypos+1) and after 333 milliseconds to coord (G_Xpos,g_Ypos)
        WinMove, on GeForce NOW,, G_Xpos, G_Ypos+1, G_Width, G_Height
        Sleep, 333
        WinMove, on GeForce NOW,, G_Xpos, G_Ypos, G_Width, G_Height
        Sleep, 333
        ; SoundBeep, 500,250
        ; SoundBeep, 700,250
        ; SoundBeep, 500,250
        Sleep, 240000 ;Sleep for 4 min(240000 milliseconds)
    }
    Else
    {
        MsgBox, 37,GeForce NOW is not running?,GeForce NOW is not running`n`n`nPress Retry to retry to find the GeForce NOW!`nPress Cancel to stop the script!
        IfMsgBox Retry
            Continue
        Else ExitApp
    }
    
}

Pause::
Suspend
Pause, Toggle, 1
if A_IsSuspended = 1
SoundBeep
if A_IsSuspended = 0
SoundBeep
Return

Return