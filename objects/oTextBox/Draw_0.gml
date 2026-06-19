if (chatterbox != noone) {
    // Draw text box backgrounds
    draw_sprite(sTextBox, 0, 0, SCREEN_HEIGHT - textboxH);

    formattedText.draw(x + 8, SCREEN_HEIGHT - textboxH + 8, typist);
    
    if (hasName) {
        draw_sprite(sTextBoxNameplate, 0, 0, SCREEN_HEIGHT - textboxH - nameplateH);
        formattedCharName.draw(x + 8, SCREEN_HEIGHT - textboxH - nameplateH);
    }
}