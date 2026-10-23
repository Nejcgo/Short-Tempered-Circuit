var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vert = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var boost = keyboard_check_pressed(vk_space);

if (boost && boostCooldown < 0) {
    curBoost = boostSp;
    boostCooldown = boostCooldownMax;
}

hsp = (hor/(1+abs(vert)*0.4)) * moveSp * curBoost;

x = clamp(x + hsp, oBattleController.boxLeft+2, oBattleController.boxRight-2);
if (x+hsp < oBattleController.boxLeft+2 || x+hsp > oBattleController.boxRight-2) hsp = 0;

vsp = (vert/(1+abs(hor)*0.4)) * moveSp * curBoost;

y = clamp(y + vsp, oBattleController.boxTop+2, oBattleController.boxBottom-2);
if (y+vsp < oBattleController.boxTop+2 || y+vsp > oBattleController.boxBottom-2) vsp = 0;

spd = point_distance(0,0,hsp,vsp);

if (spd != 0 && trailCooldown < 0) {
    part_particles_create(particleSyst, x-0.5, y-0.5, trailParticle, 1);
    trailCooldown = 1;
}

trailCooldown--;
boostCooldown--;
curBoost = power(curBoost, 0.90);