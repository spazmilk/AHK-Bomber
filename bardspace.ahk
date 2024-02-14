; Define the target program's file extension
targetExtension := "aces.exe"

; Define the keybind for activating the script
keybind := "b"

; Set the initial delay between spacebar presses
delay := 500

; Loop until the script is exited
Loop {
    ; Check if the keybind has been pressed
    if (GetKeyState(keybind, "P") = 1) {
        ; Find the window with the target file extension
        targetWindow := WinExist("[*]*" . targetExtension)

        ; If the target window is found, activate it
        if (targetWindow) {
            ControlActivate, targetWindow

            ; Press the spacebar the specified number of times
            Loop, %delay%
            SendInput, {Space}
            Sleep, delay
        }
    }

    ; Check if the script should be exited
    if (GetKeyState("Esc", "P") = 1) {
        break
    }

    ; Sleep for a short period to avoid excessive CPU usage
    Sleep, 100
}
