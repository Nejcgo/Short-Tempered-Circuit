if (InputPressed(INPUT_VERB.DOWN)) {
    menuItems[selectedIndex].selected = false;
    selectedIndex = (selectedIndex + 1 + numButtons) % numButtons;
    menuItems[selectedIndex].selected = true;
}

if (InputPressed(INPUT_VERB.UP)) {
    menuItems[selectedIndex].selected = false;
    selectedIndex = (selectedIndex - 1 + numButtons) % numButtons;
    menuItems[selectedIndex].selected = true;
}