#define scoreLoad
//scoreLoad(difficulty)
var a = argument0,
    b = 0;
ini_open("scores.ini")
b = ini_read_real("difficulty", string(a), 0)
ini_close()
return b

#define scoreSave
//scoreSave()
if score > highscore {
    ini_open("scores.ini")
    ini_write_real("difficulty", string(difficulty), score)
    ini_close()
}

#define scorePurge
//scorePurge()
file_delete("scores.ini")
