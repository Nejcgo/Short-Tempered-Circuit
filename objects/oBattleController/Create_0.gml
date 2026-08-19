enum battleStates {
    START,
    MENUS,
    PLAYER_TURN,
    ATTACK,
    CENTER_INTRO,
    CENTER,
    END
}

battle = {
    state: battleStates.ATTACK,

    playerHealth: 100,
    invulnFrames: 0,
    maxInvulnFrames: 60,

    curTurn: 0,
    curEnemy: "mika",
};

takeDamage = function(dmg, invuln) {
    if (battle.invulnFrames < 0) {
        battle.playerHealth -= dmg;
        
        if (invuln) {
            battle.invulnFrames = battle.maxInvulnFrames;
        }
    }
}

endAttack = function() {
    battle.state = battleStates.MENUS;
}