#SingleInstance Force

; Phutdown & restart shortcut keys
^#!NumpadDiv::{
shutdown_result := MsgBox("Would you like to Shutdown?", "Shutdown warning", 4)
if shutdown_result = "Yes"
    Run "shutdown /s /t 0"
}

^#!NumpadMult::{
shutdown_result := MsgBox("Would you like to Reboot?", "Reboot warning", 4)
if shutdown_result = "Yes"
    Run "shutdown /r /t 0"
}

; Power control shortcut keys
^#!Numpad0::{
    Run "powercfg.exe /s a1841308-3541-4fab-bc81-f71556f20b4a"
    Sleep 1000
    MsgBox "Power save mode", "Power Option"
}

^#!Numpad1::{
    Run "powercfg.exe /s 381b4222-f694-41f0-9685-ff5bb260df2e"
    Sleep 1000
    MsgBox "Balance mode", "Power Option"
}

^#!Numpad2::{
    Run "powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"
    Sleep 1000
    MsgBox "Hight performance mode","Power Option"
}

^#!Numpad3::{
    Run "powercfg.exe /s e7e86059-59ac-4be2-bf5b-aedc01d342be"
    Sleep 1000
    MsgBox "Ultimate performance mode", "Power Option"
}

; Terminal Shortcut
^!t::{
    Run "wt"
}

; Kill Forcused Window
Except_Windows := ['', 'Program Manager', 'Command Palette', 'Search']

#w::{
    HasIndex := 0
    ActiveWindow := WinGetTitle("A")
    for Index in Except_Windows
        if ActiveWindow == Index
            HasIndex := 1
    if !HasIndex
        WinKill(ActiveWindow)
}