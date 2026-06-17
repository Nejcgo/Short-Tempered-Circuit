if (chatterbox != noone) {
    formattedText = scribble(text).starting_format("fntSmallPixel", #FFFFFF).line_spacing(15).scale(1).wrap(302);
    
    // Draw text box background
    draw_sprite(sTextBox, 0, 0, SCREEN_HEIGHT - textboxH);

    formattedText.draw(x + 8, SCREEN_HEIGHT - textboxH + 8, typist);
}