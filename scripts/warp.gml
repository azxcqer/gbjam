///warp(room)
//because room_goto(x) is too long
var a = argument0
//check to see if the room exists
if room_exists(a){
    //actually go there
    room_goto(a)
}
