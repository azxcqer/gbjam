switch global.playerState {
    
    case States.idle:
        var movingOffset = 2;
        if keyboard_check_pressed(vk_right)
        {
            image_xscale = 1;
            direction = 0;
            playerEnterState(States.shooting);
        }
        if keyboard_check_pressed(vk_left)
        {
            /*
            image_xscale = -1;
            direction = 180;
            playerEnterState(States.shooting);
            */
        }
        if keyboard_check_pressed(vk_up)
        {
            if global.currentLane > 0
            {
                global.currentLane = global.currentLane - 1;
                x = global.lanes[| global.currentLane].x + (sprite_height/2);
                y = global.lanes[| global.currentLane].y + (sprite_height/2) - movingOffset;
            }
                
        }  
        if keyboard_check_pressed(vk_down)
        {
            if global.currentLane < (ds_list_size(global.lanes) - 1)
            {
                global.currentLane = global.currentLane + 1;
                x = global.lanes[| global.currentLane].x + (sprite_height/2);
                y = global.lanes[| global.currentLane].y + sprite_height/2 - movingOffset;
            }
        }      
        break; 
    case States.shooting:
        shoot()
        
        playerEnterState(States.idle);
        break;
    case States.stun:
        
        break;
    case States.dead:
        
        break;

}
