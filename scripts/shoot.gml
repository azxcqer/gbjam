#define shoot
///shoot()
shootX = x + shootOffsetX
shootY = y + shootOffsetY
var a = action_create_object_motion(shootBullet,shootX,shootY,shootSpeed,direction);
a.bulletPower = shootPower

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

#define bulletInit
//bulletInit()
bulletPower = 0
