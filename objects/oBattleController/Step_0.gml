switch (battle.state) {
    case battleStates.START:
        battle.attackPlan = loadCharacter(battle.enemy);
        battle.state = battleStates.SPAWN_MENUS;
        break;
	case battleStates.ATTACK:
        
        break;
    case battleStates.SPAWN_MENUS:
        menu = instance_create_layer(0, 0, "Instances", oBattleMenu);
        battle.state = battleStates.MENUS;
        break;
    case battleStates.MENUS:
        
        break;
}

battle.invulnFrames = max(battle.invulnFrames - 1, 0);

show_debug_message($"{battle.invulnFrames}")