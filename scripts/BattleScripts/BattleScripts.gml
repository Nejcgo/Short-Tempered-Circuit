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