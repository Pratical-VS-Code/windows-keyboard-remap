#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

^1::
    if IsZH_TW()
    {
        ; MsgBox, "ZH-TW"
        Send, { Space } 
    } Else {
        Send, { Tab } 
    }
    ; Current_Keyboard := DllCall("GetKeyboardLayout", "UInt", 0)
    ; MsgBox % Format("GetCurrent keyboard layout: {1}", Current_Keyboard)
Return


; 和WINDOWS Chrome/vscode的快捷鍵衝突
; ^w::
;     WinGetTitle, Title, A
;     WinGet, AppName, ProcessName, A
;     ; WinGet, app,,ahk_exe 
;     if Title contains Code 
;         MsgBox, %Title%
;     IsDisableApps := AppName in msedge.exe,Code.exe
;     if IsDisableApps And IsEng()
;         MsgBox, t%AppName%
;         ; Return
;     ; "No Microsoft Edge"
;         ; MsgBox, %WinGetActiveTitle("ahk_exe")%
;         ; MsgBox, %Title%
;         ; MsgBox, "true"%AppName%
;     else {
;         Send, ^{ BS }
;         return
;     }
; Return
