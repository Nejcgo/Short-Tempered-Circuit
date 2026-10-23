if (timeLeft > 180 && timeLeft % frequency == 0) {
    var spawnX = (side == 0) ? fieldLeft : fieldRight;
    var magnetX = (side == 0) ? fieldRight : fieldLeft;
    var magnetY = (fieldTop + fieldBottom) * 0.5 + irandom_range(-30, 30);
    
    audio_play_sound(sfxSummon1, 5, false);

    for (var i = 0; i < bulletsPerWave; i++) {
        var yy = lerp(fieldTop + 6, fieldBottom - 6, bulletsPerWave == 1 ? 0 : i / (bulletsPerWave - 1));
        var bullet = instance_create_layer(spawnX, yy, "BULLETS", oBulletWithTrail);

        bullet.spd = random_range(0.2, 0.4);
        bullet.dir = (side == 0) ? 270 : 90;

        bullet.magnetX = magnetX;
        bullet.magnetY = (magnetY + bullet.y)/2;

        bullet.moveFunc = method(bullet, function() {
            var pullDir = point_direction(self.x, self.y, self.magnetX, self.magnetY);
            self.spd = min(self.spd + 0.04, 4);
            self.dir += angle_difference(pullDir, self.dir) * 0.07;
            self.x += lengthdir_x(self.spd, self.dir);
            self.y += lengthdir_y(self.spd, self.dir);

            if (self.x < -16 || self.x > 336 || self.y < -16 || self.y > 196) {
                instance_destroy();
            }
        });
    }

    side = !side;
}

timeLeft--;


if (timeLeft == 100 && difficulty >= 1) {
    with (oBullet) {
        dir = point_direction(x,y,oHeart.x, oHeart.y);
        
        moveFunc = function() {
            self.x += lengthdir_x(self.spd, self.dir);
            self.y += lengthdir_y(self.spd, self.dir);
            
            spd = max(spd - 0.03, 0);

            if (self.x < -16 || self.x > 336 || self.y < -16 || self.y > 196) {
                instance_destroy();
            }
        }
    }
}

if (timeLeft <= 0) {
    instance_destroy();
}
