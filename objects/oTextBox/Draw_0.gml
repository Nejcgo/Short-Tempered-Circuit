if (chatterbox != noone) {
    formattedText = scribble(text);
    
    // Draw text box background
    draw_sprite(sTextBox, 0, x, y);

    formattedText.draw(x + 16, y + 16, typist);
}