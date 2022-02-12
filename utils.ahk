#SingleInstance, Force
; SendMode Input
SetWorkingDir, %A_ScriptDir%

global ENG:=0x4090409
global ZH_TW:=0x4040404

IsAlone(key) {
    return A_PriorKey = key 
        and GetKeyState("Ctrl") = 0 
        and GetKeyState("Alt") = 0
        and GetKeyState("LWin") = 0
        and GetKeyState("RWin") = 0
        and GetKeyState("a") = 0
        and GetKeyState("b") = 0
        and GetKeyState("c") = 0
        and GetKeyState("d") = 0
        and GetKeyState("e") = 0
        and GetKeyState("f") = 0
        and GetKeyState("g") = 0
        and GetKeyState("h") = 0
        and GetKeyState("i") = 0
        and GetKeyState("j") = 0
        and GetKeyState("k") = 0
        and GetKeyState("l") = 0
        and GetKeyState("m") = 0
        and GetKeyState("n") = 0
        and GetKeyState("o") = 0
        and GetKeyState("p") = 0
        and GetKeyState("q") = 0
        and GetKeyState("r") = 0
        and GetKeyState("s") = 0
        and GetKeyState("t") = 0
        and GetKeyState("u") = 0
        and GetKeyState("v") = 0
        and GetKeyState("w") = 0
        and GetKeyState("x") = 0
        and GetKeyState("y") = 0
        and GetKeyState("z") = 0
}

IsEng() {
    ENG:=0x4090409
    return ENG == GetIME()
}

IsZH_TW() {
    ZH_TW:=0x4040404
    return ZH_TW == GetIME()
}

GetIME() {
    SetFormat, Integer, H
    WinGet, WinID,, A
    ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
    InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
    Return InputLocaleID
}

; Show current IME
ShowIME() {
    MsgBox % GetIME()
}