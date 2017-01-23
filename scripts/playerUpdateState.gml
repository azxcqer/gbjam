switch global.playerState {
    
    case States.idle:
        var movingOffset = 2
        /*
        if keyboard_check(vk_right)
        || keyboard_check(ord("D"))
        || keyboard_check(ord("Z"))
        || keyboard_check(vk_space)
        {
        */
        vspeed = 0
        
        switch game {
            case GameName.Inkatomb:
                if canShoot
                    {
                        canShoot = false;
                        alarm[0] = room_speed / shotsPerSecond;
                        image_xscale = 1;
                        direction = 0;
                        playerEnterState(States.shooting);
                    }
                //}
                if keyboard_check_pressed(vk_left)
                {
                    /*
                    image_xscale = -1;
                    direction = 180;
                    playerEnterState(States.shooting);
                    */
                }
                if keyboard_check_pressed(vk_up)
                || keyboard_check_pressed(ord("W"))
                {
                    if global.currentLane > 0
                    {
                        global.currentLane = global.currentLane - 1;
                        x = global.lanes[| global.currentLane].x + (global.lanes[| global.currentLane].sprite_width/2);
                        y = global.lanes[| global.currentLane].y + (global.lanes[| global.currentLane].sprite_height/2) - movingOffset;
                    }
                        
                }  
                if keyboard_check_pressed(vk_down)
                || keyboard_check_pressed(ord("S"))
                {
                    if global.currentLane < (ds_list_size(global.lanes) - 1)
                    {
                        global.currentLane = global.currentLane + 1;
                        x = global.lanes[| global.currentLane].x + (global.lanes[| global.currentLane].sprite_width/2);
                        y = global.lanes[| global.currentLane].y + (global.lanes[| global.currentLane].sprite_height/2) - movingOffset;
                    }
                }
            
            break
        
            case GameName.Jumping:
                /*if !keyboard_check(vk_space){
                    if canJump{
                        playerEnterState(States.jumping)
                    }                    
                }*/
            break

        }
        
    case States.jumping:
        vspeed = -jumpSpeed
        if keyboard_check(vk_space)
        || y <= jumpMax {
            playerEnterState(States.falling)
        }
        
        break;
    case States.falling:
        vspeed = jumpSpeed
        if y >= jumpStart {
            playerEnterState(States.idle)
        }
    break;
        
    case States.shooting:
        shoot()
        
        playerEnterState(States.idle);
    break;
    
    case States.stun:
        
        break;
    case States.dead:
        image_yscale = -1
        break;

}
