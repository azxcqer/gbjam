#define cheat
///cheat step
if cheatTimer > 0 {
    cheatTimer --
    cheating = true
    
    //check the cheats
    while cheating {
        
        if cheatCheck("babababy"){
            
            cheatMute = true
            audio_play_sound(sdTcheco, 10, false)
            if instance_exists(oToniolo){
                oToniolo.visible = true
            }
        }
        
        if cheatCheck("cu"){
            //audio_play_sound(tchecoSounds[irandom((array_length_1d(tchecoSounds)) - 1)], 10, false)
            cheatMute = true
            audio_play_sound(sdTcheco, 10, false)
            if instance_exists(oToniolo){
                oToniolo.visible = true
            }
        
        }
        
        //breaking the while loop
        cheating = false        
    }
}
else {
    cheatString = ""
    keyboard_string = ""
}


#define cheatInit
///cheatInit()
cheatTimer = 0
cheatString = "herpderp"
cheatMaxLength = 25
cheatLast = "This whale should have some hats"
curHat = 0
//the variable to break the loop
cheating = true
//to play the cheat sound or not
cheatMute = false
//sound array
tchecoSounds[0] = sdTcheco
tchecoSounds[1] = sdTcheco2

#define cheatImput
var a = keyboard_string,
    b = string_length(a)

a = string_lower(string_copy(a, b, 1));
if a > cheatMaxLength {
    keyboard_string=""
}

cheatString += a

if string_length(cheatString) > cheatMaxLength {
    cheatString = ""
}


#define cheatCheck
///cheatCheck("word")
var a = argument0,
    b = string_count(a, cheatString)
    
if b >= 1 {
    /*clearing the string so it doesn't trigger more than once
    this is okay for now, but kinda limiting since I can't use, for ex, apple and then applepie,
    unless i check for applepie first, because if I do it will never trigger
    */
    if !string_count("repeat",cheatString) >= 1 {
        cheatLast = a
    }
    cheatString = ""
    keyboard_string = ""
    if !cheatMute {
        audio_play_sound(sdExplosion,5,false)
    }
    cheating = false
    cheatMute = false
    return true
}
else {
    return false
}


#define cheatRepeat
cheatString = cheatLast
cheatMute = true