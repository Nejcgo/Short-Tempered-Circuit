if (timeLeft % frequency == 0) {
    var fieldLeft = 64;
    var fieldRight = 256;
    var fieldTop = 32;
    var fieldBottom = 148;
    
    if (difficulty == 0) {
        var xx = choose(fieldLeft + 10, fieldRight - 10);
        var bullet = instance_create_layer(xx, irandom_range(fieldTop + 10, fieldBottom - 10), "BULLETS", oBullet);
        bullet.spd = 1.5;
        bullet.dir = (xx < 160) ? 0 : 180;
        bullet.damage = 5;
    } 
    else if (difficulty == 1) {
        var spawnX = irandom_range(fieldLeft + 20, fieldRight - 20);
        var spawnY = choose(fieldTop, fieldBottom);
        var bullet = instance_create_layer(spawnX, spawnY, "BULLETS", bulletAttractive);
        bullet.spd = 2.0;
        bullet.dir = (spawnY == fieldTop) ? 270 : 90;
        bullet.magnetX = oHeart.x;
        bullet.magnetY = oHeart.y;
        bullet.moveFunc = method(bullet, function() {
            var pullDir = point_direction(self.x, self.y, oHeart.x, oHeart.y);
            self.spd = min(self.spd + 0.02, 3.5);
            self.dir += angle_difference(pullDir, self.dir) * 0.05;
            self.x += lengthdir_x(self.spd, self.dir);
            self.y += lengthdir_y(self.spd, self.dir);
            if (self.x < -16 || self.x > 336 || self.y < -16 || self.y > 196) {
                instance_destroy();
            }
        });
    } 
    else {
        for (var i = 0; i < 2; i++) {
            var edge = choose(fieldLeft, fieldRight);
            var yy = irandom_range(fieldTop + 10, fieldBottom - 10);
            var bullet = instance_create_layer(edge, yy, "BULLETS", bulletAttractive);
            bullet.spd = 3;
            bullet.dir = point_direction(edge, yy, oHeart.x, oHeart.y);
            bullet.damage = 7;
            bullet.moveFunc = method(bullet, function() {
            var pullDir = point_direction(self.x, self.y, oHeart.x, oHeart.y);
            self.spd = min(self.spd + 0.02, 3.5);
            self.dir += angle_difference(pullDir, self.dir) * 0.07;
            self.x += lengthdir_x(self.spd, self.dir);
            self.y += lengthdir_y(self.spd, self.dir);
            if (self.x < -16 || self.x > 336 || self.y < -16 || self.y > 196) {
                instance_destroy();
            }
        });
        }
    }
}

timeLeft--;

if (timeLeft <= 0) {
    instance_destroy();
}
