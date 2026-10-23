enum menuStates {
    SPAWNING,
    MENU,
    LEAVE
};

battle = undefined;

// Current mode: "main" for the top‑level 3 buttons, "act" for the submenu
menuMode = "main";

cursorIndex = 0;

state = menuStates.SPAWNING;

menuSize = 109;
buttonSpacing = 2;
buttonWidth = 75;
numButtons = 3;
buttonHeight = (menuSize - ((numButtons - 1) * buttonSpacing)) / numButtons;

selectedIndex = 1;

menuItems = [
    new BattleButton("FIGHT", noone, undefined),
    new BattleButton("ACT", noone, undefined),
    new BattleButton("CENTER", noone, undefined),
];

sndMove = sfxSelect;
sndConfirm = sfxConfirm;