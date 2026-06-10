function Character(_x, _y, _sprite) constructor {
    x = _x;
    y = _y;
    sprite = _sprite;
    
    static setPos = function (newX, newY) {
        x = newX;
        y = newY;
    }
    
    static setSprite = function (newSprite) {
        sprite = newSprite;
    }
    
    static drawSelf = function () {
        draw_sprite(sprite, 0, x, y);
    }
}

function addCharacter(char) {
    if (instance_exists(oTextBox)) {
        array_push(oTextBox.activeCharacters, char);
    } else {
        show_debug_log("oTextBox doesn't exist! (tried adding character)");
    }
}

function move_character() {
    
}

function set_sprite_character() {
    
}