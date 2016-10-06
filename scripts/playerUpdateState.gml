switch global.playerState {
    
    case States.idle:
        
        break;        
    case States.shooting:
        action_create_object_motion(oShot,x,y, 0,direction);
        playerEnterState(States.idle);
        break;
    case States.stun:
        
        break;
    case States.dead:
        
        break;

}
