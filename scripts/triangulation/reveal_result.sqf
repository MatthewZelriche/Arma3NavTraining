params ["_arenaCenter", "_guessMarker"];

private _marker = createMarkerLocal ["Actual", _arenaCenter];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "hd_dot";
_marker setMarkerTextLocal format ["%1 Actual Location", groupID (group player)];

hint format ["%1, Your guess was off by: %2", groupID (group player), getMarkerPos _guessMarker distance getMarkerPos "Actual"];