activeCharacters = [];

ChatterboxLoadFromFile("testDialogue.yaml");
ChatterboxAddFunction("move", move_character);
ChatterboxAddFunction("setSprite", set_sprite_character);

chatterbox = ChatterboxCreate("testDialogue.yaml");
curLine = 0;

typist = scribble_typist().in(1, 0);

charName = ChatterboxGetContentSpeaker(chatterbox, curLine);
text = ChatterboxGetContentSpeech(chatterbox, curLine);