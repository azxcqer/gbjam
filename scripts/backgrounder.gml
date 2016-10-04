///backgrounder()
//variables
//the default BG. needs to be set to the sprite
defBG = bgTemp
//if the background should be tiled. 0 = no, 1 = vertical, 2 = horizontal, 3 = both
tile = 3

//if there is no background, set a default backgound
if background_index[0] = -1 {
    background_index[0] = defBG
    }
//if the background is not visible, make it visible
if !background_visible[0] {
    background_visible[0] = true;
    }
//tile the bg if you need to
background_vtiled[0] = false
background_htiled[0] = false
switch tile {
    
    case 3:
        background_vtiled[0] = true
    case 1:
        background_htiled[0] = true
        break;
    case 2:
        background_vtiled[0] = true
        break;

}
