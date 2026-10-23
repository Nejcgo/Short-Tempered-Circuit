if (moveFunc != undefined) {
	moveFunc();	
} else {
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
}

part_particles_create(particleSyst, x-0.5, y-0.5, trailParticle, 1);

if (place_meeting(x, y, oHeart)) {
	oBattleController.takeDamage(damage, givesInvuln);
	
	if (onHit != undefined) {
		onHit();
	}
	
	if (destroys) {
		instance_destroy();
	}
}