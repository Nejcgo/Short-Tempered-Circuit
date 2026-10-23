spd = 0;
dir = 0;

moveFunc = undefined;

damage = 5;
givesInvuln = true;
destroys = true;
hitCooldown = 0; // In the case of givesInvuln = false, how often the projectile will hit.

onDestroy = undefined;
onHit = undefined;

particleSyst = part_system_create_layer("PARTICLES1", true);
part_system_draw_order(particleSyst, true);

trailParticle = part_type_create();
part_type_sprite(trailParticle, sTrailParticle, false, false, false);
part_type_size(trailParticle, 1, 1, -0.02, 0);
part_type_scale(trailParticle, 1, 1);
part_type_speed(trailParticle, 0, 0, 0.005, 0);
part_type_direction(trailParticle, 80, 100, 0, 0);
part_type_gravity(trailParticle, 0, 270);
part_type_orientation(trailParticle, 0, 0, 0, 1, false);
part_type_colour3(trailParticle, $FFFFFF, $ffffff, $ffffff);
part_type_alpha3(trailParticle, 0.9, 0.6, 0);
part_type_blend(trailParticle, true);
part_type_life(trailParticle, 10, 10);