
params ["_arenaCenter", "_maxDistance"];

while {alive player} do {
	sleep 1;
	private _distFromSpawn = _arenaCenter distance getPos player;

	if (_distFromSpawn > _maxDistance + 1) then {
		player setPos _arenaCenter;
		hint "You exceeded the maximum distance in which you may travel from the spawn.";
	}
};
