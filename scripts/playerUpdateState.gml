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
                InkatombIdle()
                
            break
        
            case GameName.Jumping:
                if !keyboard_check(vk_space){
                    if canJump{
                        playerEnterState(States.jumping)
                    }                    
                }
            break
    
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
