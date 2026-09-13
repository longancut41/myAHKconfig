#maxthreadsperhotkey 3;
#SingleInstance Force

SetKeyDelay 0
SetMouseDelay 0

global isEnable := false

enableRun(){
    if(!isEnable){
        global isEnable := true
        while(isEnable){
            getColor := PixelGetColor(993, 633)
            if(getColor == "0xFFFFFF"){
                SendEvent "{Click 993 633}"
                Sleep 30000
                SendEvent "{Click 990 990}"
            }
            Sleep 100000
        }
    }
}


disableRun(){
    global isEnable := false
}


^#!up::{
    SoundBeep 1000, 500
    enableRun()
}
#SuspendExempt
CapsLock::Suspend 1
#CapsLock::Suspend 0

^#!down::{
    SoundBeep
    disableRun()
}