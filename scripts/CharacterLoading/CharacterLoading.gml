function loadCharacter(name){
    switch (name) {
        case "mika":
    	    return "mika";
        default:
            show_debug_message("[loadCharacter ERROR] That character does not exist!");
    }
}