var click = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);
var skip = keyboard_check_pressed(vk_escape);

if (click) {
    if (chatterbox != noone) {
        if (ChatterboxIsWaiting(chatterbox)) {
            if (typist.get_state() >= 1) { 
                ChatterboxContinue(chatterbox);
                
                audio_play_sound(sfxTextboxSkip, 5, false);
                
                charName = ChatterboxGetContentSpeaker(chatterbox, curLine);
                hasName = charName != "";
                text = ChatterboxGetContentSpeech(chatterbox, curLine);
            } else {
                typist.skip();
            }
        }
    }
}

if (skip) {
    if (chatterbox != noone) {
        ChatterboxFastForward(chatterbox);

        typist = scribble_typist().in(1, 0);

        charName = ChatterboxGetContentSpeaker(chatterbox, curLine);
        hasName = charName != "";
        text = ChatterboxGetContentSpeech(chatterbox, curLine);
    }
}

formattedText = scribble(text).starting_format("fntSmallPixel", #FFFFFF).line_spacing(15).scale(1).wrap(302);
if (hasName) {
    formattedCharName = scribble(string_concat(/*"[slant]", */charName)).starting_format("fntSmallPixel", #FFFFFF);
}

