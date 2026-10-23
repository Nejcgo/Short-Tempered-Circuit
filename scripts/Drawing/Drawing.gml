function draw_self_shake(shakeFactor) {
    var shakeX = global.screenXOffset * shakeFactor;
    var shakeY = global.screenYOffset * shakeFactor;
    draw_sprite_ext(sprite_index, image_index, 
                    x + shakeX, y + shakeY, 
                    image_xscale, image_yscale, image_angle, 
                    c_white, image_alpha);
}