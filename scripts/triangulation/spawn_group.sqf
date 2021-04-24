params ["_arenaCenter", "_maxDistance"];

player setPos _arenaCenter;

[_arenaCenter, _maxDistance] execVM "scripts\triangulation\enforce_arena_zone.sqf";

player setVariable ["arenaCenter", _arenaCenter];
addMissionEventHandler ["MarkerCreated", {
	params ["_marker", "_channelNumber", "_owner", "_local"];
	if (markerText _marker == "guess" and (groupID (group _owner) == groupID (group player))) then {
		private _arenaCenter = player getVariable "arenaCenter";
		[[_arenaCenter, _marker], "scripts\triangulation\reveal_result.sqf"] remoteExec ["execVM", units (group player)];
	}
}];
