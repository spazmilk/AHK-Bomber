#Persistent ; Keep the script running
SetTitleMatchMode, 2 ; Allow partial matching of window titles

; Define a variable to track whether the keybind is active
KeybindActive := 0

; Check if the active window is a game window
#IfWinActive, ahk_exe aces.exe ; Replace with your game's executable name
{
    ; Set the variable to indicate the keybind is active
    KeybindActive := 1
}

; Define the keybind to "`"
`::
; Check if the keybind is active (inside the game window)
If (KeybindActive)
{
    ; Press the spacebar 10 times with adjusted 1-millisecond delays
    Loop,10
    {
        Send, {Space down}
        Sleep, 1 ; Adjust (in milliseconds) press and hold for the space bar (1 millisecond)
        Send, {Space up}
        Sleep, 1 ; Adjust the sleep time (in milliseconds) between keypresses (1 millisecond)
    }
}
; If not in the game window, send a regular "B" keypress
else
{
    Send, b
}
return
