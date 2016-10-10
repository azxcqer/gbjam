#define cheat
///cheat step
if cheatTimer > 0 {
    cheatTimer --
    cheating = true
    curHat = oHat.sprite_index
    //check the cheats
    while cheating {
        //debug cheats
        cheatDebug()

        if cheatCheck("hat"){
            randomHat()
        }
                
        //create a whale        
        if whalesAvail > 0{
            if cheatCheck("whale"){
                var w =  randCreate(oWhale)
                with w {
                    depth = random_range(5,10)
                }
                whalesAvail--
                whalesTotal++
                whaleTipReset()
            }
        }
        
        cheatBgs()
        //cheats by aprox use I guess
        //hats
        cheatToon()
        cheatAnime()
        cheatGame() 
        cheatHats()

        //floaters
        cheatFloaters()
        
        //cleaner
        if cheatCheck("clean")
        or cheatCheck("clear"){
            with oFloaty {
                instance_destroy()
            }
            global.hat = false
            background_hspeed[0] = 6
        }
        //repeat
        else if cheatCheck("repeat"){
            cheatRepeat()
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
        audio_play_sound(sdPop,5,false)
    }
    cheating = false
    scoring(10 * whalesTotal)
    cheatMute = false
    return true
}
else {
    return false
}


#define cheatRepeat
cheatString = cheatLast
cheatMute = true