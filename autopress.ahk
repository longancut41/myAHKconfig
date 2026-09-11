#maxthreadsperhotkey 3;
#SingleInstance Force

SetKeyDelay 0
SetMouseDelay 0

global autoPressisEnable := false

autoPress(){
    if(!autoPressisEnable){
        global autoPressisEnable := true
        while(autoPressisEnable){
            send "{z}" ; change key inside the {} to change to key you want
            send "{c}"
            sleep 240000 ; set sleep time for next press (1 - inf milisecond)
        }
    }
}

disableautopress(){
    global autoPressisEnable := false
}

^#!up:: autoPress()
#SuspendExempt
CapsLock::Suspend 1
#CapsLock::Suspend 0

^#!down::{
    disableautopress()
    }