#SingleInstance Force

#Include %A_ScriptDir%/utils.ahk
#Include %A_ScriptDir%/debug.ahk
; #Include %A_ScriptDir%/custom-delete-keybindings.ahk
#Include %A_ScriptDir%/input-source.ahk

^Esc::ExitApp ; Exit script with Escape key

;==================================o
;      Custom Modifier Remap       | 
;----------------------------------o
$LAlt::LCtrl
$LCtrl::LAlt
;----------------------------------o
; #If IsEng()
;   Space::LShift
; ; LShift::Space
; #If

; Space Up:: 
;  SetCapsLockState, Off 
;  if (A_PriorKey = "Space" 
;     and GetKeyState("Ctrl") = 0 
;     and GetKeyState("Alt") = 0
;     and GetKeyState("Shift") = 0) {
;     Send { Space }
;   }
; Return
;----------------------------------o

;==================================o
;       Basic Cursor Shortcut      | 
;----------------------------------o
$!j::Send { down }
$!k::Send { up }
;----------------------------------o
;      (x) RAlt & j::Down          |
;      (x) RAlt & k::Up            |
;----------------------------------o
;  Above Configs have side-effect  | 
;           at VS Code             | 
;    (trigger built-in alt+j/k)    | 
;----------------------------------o

;==================================o
;       Custom Cursor Shortcut     | 
;----------------------------------o
;|     RAlt + l    |  Ctrl + Right |
;|     RAlt + h    |  Ctrl + Left  |
;|     RAlt + f    |      Right    |
;|     RAlt + b    |      Left     |
;|     RAlt + e    |      End      |
;|     RAlt + a    |      Home     |
;==================================o
;           Conditions             | 
;----------------------------------o
IsNotDisableApps := AppName not in Code.exe
#If IsNotDisableApps
  ;----------------------------------o
>!l::Send, ^{ Right }
>!h::Send, ^{ Left }
>!f::Send, { Right }
>!b::Send, { Left }
>!e::Send, { End }
>!a::Send, { Home }
;----------------------------------o
#If
  ;----------------------------------o

>!Tab::!F14
; 兩個坑: 1)直接指定LAlt後不能再綁定<!w或<^w 2)f23/24可能不能運作 但f13 14可以 但shift+f2是可以的
; 下語法綁定左Alt後，原本交換的Ctrl鍵直接不能動
; ^w::Send, +{ F4 }

; f23 f24 fails

;==================================o
;       Custom Cursor Shortcut     | 
;----------------------------------o
;|    LCtrl + Up   |  Ctrl + Home  |
;|    LCtrl + Down |  Ctrl + End   |
;----------------------------------o
$^+k::Send, ^{ Home }
$^+j::Send, ^{ End }
;----------------------------------o
; $^!k::Send, ^{ Home };   failed  |
;----------------------------------o

;==================================o
;       Custom Editor Shortcut     | 
;----------------------------------o
;|     RAlt + s    |     Space     |
;----------------------------------o
>!s::Send, { Space }
;----------------------------------o

;==================================o
;       Custom Esc Shortcut        | 
;----------------------------------o
;|     RAlt + q    |    Ctrl + q   |
;----------------------------------o
>!q::Send, { Escape }
;----------------------------------o

