enum battleStates {
    START,
    SPAWN_MENUS,
    MENUS,
    PLAYER_TURN,
    SPAWN_ATTACK,
    ATTACK,
    CENTER_INTRO,
    CENTER,
    END
}

battle = {
    state: battleStates.START,

    playerHealth: 100,
    invulnFrames: 0,
    maxInvulnFrames: 60,

    curTurn: 0,
    enemy: "mika",
    attackPlan: undefined
};

boxTop = 32;
boxBottom = 148;
boxLeft = 64;
boxRight = 256;

menu = noone;

takeDamage = function(dmg, invuln) {
    if (battle.invulnFrames <= 0) {
        battle.playerHealth -= dmg;
        
        audio_play_sound(sfxHit, 5, false);
        
        if (invuln) {
            battle.invulnFrames = battle.maxInvulnFrames;
        }
    }
}

endAttack = function() {
    battle.state = battleStates.SPAWN_MENUS;
}