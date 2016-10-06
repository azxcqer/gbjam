playerExitState(global.playerState);
global.playerState = argument0;

switch global.playerState {
    case States.idle:
        sprite_index = sPlayer;
        break;        
    case States.shooting:
        sprite_index = sPlayer;
        break;
    case States.stun:
        sprite_index = sPlayer;
        break;
    case States.dead:
        sprite_index = sPlayer;
        break;

}
