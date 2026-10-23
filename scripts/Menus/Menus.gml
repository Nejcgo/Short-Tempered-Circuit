function BattleButton(_text, _icon, _onClick) constructor {
    text = _text;
    icon = _icon;
    onClick = _onClick;
    
    selected = false;
    
    scribbleText = scribble($"{text} [{icon}]").starting_format("fntSmallPixel").align(fa_left, fa_center);
    
    static draw = function(x, y, w, h) {
        draw_sprite_stretched(sBatteMenuButton, selected, x, y, w, h)
        
        scribbleText.draw(x + 2, y + h/2);
    }
    
    static press = function() {
        if (onClick != undefined) {
            onClick();
        }
    }
}