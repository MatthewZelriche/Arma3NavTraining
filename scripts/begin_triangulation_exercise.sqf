#define MAX_TRIANGULATION_RADIUS 75

private _randomPosMapNoWater = [] call BIS_fnc_randomPos;
private _newPos = [_randomPosMapNoWater, 400, 0] call BIS_fnc_findOverwatch;


[_newPos, MAX_TRIANGULATION_RADIUS] execVM "scripts\triangulation\place_arena.sqf";


private _groupUnits = units (group player);

{
	[[_newPos, MAX_TRIANGULATION_RADIUS], "scripts\triangulation\spawn_group.sqf"] remoteExec ["execVM", _x];
} forEach _groupUnits;