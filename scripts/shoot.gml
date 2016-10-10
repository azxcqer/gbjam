#define shoot
///shoot()
shootX = x + shootOffsetX
shootY = y + shootOffsetY
/* welp, this was storing the object class and not the object id, so it was messing things up
var a = action_create_object_motion(shootBullet,shootX,shootY,shootSpeed,direction);
*/
audio_play_sound(shootSound,5,false)
var a = instance_create(shootX, shootY, shootBullet);
a.pow = shootPower
a.life = shootPower
a.direction = direction
a.speed = shootSpeed


#define shootInit
//shootInit()
shootPower = 1
shootSpeed = 1.5
shootX = 0
/*
we could use both but in reality each thing will only shoot from one side so...
//right
shootY1 = y
//left
shootY2 = y
*/
shootY = 0

//ofset for proper shooting
shootOffsetX = 0
shootOffsetY = 0

//1 is right. -1 is left
shootDir = 1
shootBullet = oBullet
shootSound = sdShot