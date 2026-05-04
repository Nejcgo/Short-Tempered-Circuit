// Reference to the battle state struct (the controller sets this)
battle = undefined;

// Current mode: "main" for the top‑level 3 buttons, "act" for the submenu
menuMode = "main";

// Cursor index (0‑based)
cursorIndex = 0;

// Array of MenuItem structs for the current mode
menuItems = [];

// Sounds (optional)
sndMove = sfxCursor;   // peep when moving selection
sndConfirm = sfxSelect; // sound on confirm