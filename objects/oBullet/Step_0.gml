if (moveFunc != undefined) {
	moveFunc();	
} else {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
}

if (place_meeting(x, y, oSoul)) {
	oBattleController.takeDamage(damage, givesInvuln);
	
	if (onHit != undefined) {
		onHit();	
	}
	
	if (destroys) {
		instance_destroy();	
	}
}