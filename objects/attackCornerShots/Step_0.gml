if (timeLeft % frequency = 0) {
    if (burstCount == 0) {
        var xx = 254;
        var yy = 32;
        
        for (var i = 0; i < bulletCount; i++) {
            var bullet = instance_create_layer(xx, yy, "BULLETS", bulletAttractive);
            bullet.spd = 2;
            bullet.dir = point_direction(bullet.x, bullet.y, oHeart.x, oHeart.y) + (i - floor(bulletCount/2)) * 45/bulletCount;
        }
        
        curShot++;
        if (curShot == shotCount) {
            burstCount++;
        }
    } else if (burstCount == 1 && shotPause <= 0) {
        var xx = 64;
        var yy = 32;
        
        for (var i = 0; i < bulletCount; i++) {
            var bullet = instance_create_layer(xx, yy, "BULLETS", bulletAttractive);
            bullet.spd = 2;
            bullet.dir = point_direction(bullet.x, bullet.y, oHeart.x, oHeart.y) + (i - floor(bulletCount/2)) * 45/bulletCount;
        }
        
        curShot++;
        if (curShot == shotCount) {
            burstCount++;
        }
    }
}

if (burstCount != 0) {
    shotPause--;
}
timeLeft--;

if (timeLeft <= 0) {
    instance_destroy();
}