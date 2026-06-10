enum ACTION {
    FIGHT,
    ACT,
    CENTER,
	BACK,
    // specific ACTs
    ASK,
    JOKE,
}

function MenuItem(_label, _actionId, _enabled) constructor {
    label = _label;
    actionId = _actionId;
    enabled = _enabled;
}

function AttackPattern(_name, _difficultyMin, _weight, _executeFunc) constructor {
    name = _name;
    difficultyMin = _difficultyMin;
    weight = _weight;
    execute = _executeFunc;
}