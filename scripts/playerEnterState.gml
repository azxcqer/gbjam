playerExitState(global.playerState);
global.playerState = argument0;

switch global.playerState {
    case States.idle:
        sprite_index = sPlayer;
        image_speed = 0.1;
        break;
    case States.shooting:
    case States.stun:
    case States.dead:
    case States.jumping:
        sprite_index = sPlayer;
        image_speed = 0

}
