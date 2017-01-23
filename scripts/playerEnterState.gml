playerExitState(global.playerState);
global.playerState = argument0;

switch global.playerState {
    case States.idle:
        y = jumpStart
        canJump = true
        sprite_index = sPlayer;
        image_speed = 0.1;
        break;
    case States.jumping:
        canJump = false
    case States.shooting:
    case States.falling:
    case States.stun:
    case States.dead:
        sprite_index = sPlayer;
        image_speed = 0
        image_index = 0
}
