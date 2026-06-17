

activeCharacters = [];

ChatterboxLoadFromFile("testDialogue.yaml");
ChatterboxAddFunction("move", move_character);
ChatterboxAddFunction("setSprite", set_sprite_character);

chatterbox = ChatterboxCreate("testDialogue.yaml");
curLine = 0;

ChatterboxJump(chatterbox, "Start");

textboxH = sprite_get_height(sTextBox);

typist = scribble_typist().in(0.7, 0);

typist.character_delay_add(",", 100);
typist.character_delay_add(".", 75);
typist.character_delay_add("?", 300);
typist.character_delay_add("!", 250);
typist.character_delay_add(". ", 150);

typist.sound([sfxMidTalk], 12, 0.9, 1.2);

charName = ChatterboxGetContentSpeaker(chatterbox, curLine);
text = ChatterboxGetContentSpeech(chatterbox, curLine);