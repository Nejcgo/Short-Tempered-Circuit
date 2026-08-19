hsp = 0;
vsp = 0;

trailCooldown = 0;

boostSp = 5;
curBoost = 1;
boostCooldown = 60*2;
boostCooldownMax = 60*2;

moveSp = 1;

STRETCH_FACTOR = 0.2;

image_xscale = 0.5;
image_yscale = 0.5;

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
part_type_colour3(trailParticle, $FFFFFF, $0000FF, $000091);
part_type_alpha3(trailParticle, 0.9, 0.6, 0);
part_type_blend(trailParticle, true);
part_type_life(trailParticle, 10, 10);
