#SingleInstance Force

SetMouseDelay 0

global check := 1

LButton::{
    Send "{LButton}"
    Send "{LButton}"
    Send "{LButton}"
}



#SuspendExempt
CapsLock::{
    Suspend -1
    if (check = 1){
        SoundBeep
        global check := 0
    }

    else{
        global check := 1
        SoundBeep 1000, 500
    }
}