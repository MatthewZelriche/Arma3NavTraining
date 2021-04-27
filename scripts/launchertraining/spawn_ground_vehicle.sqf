private _vehicleTypes = ["O_APC_Tracked_02_cannon_F", "O_APC_Wheeled_02_rcws_v2_F"];
private _result = [getPos selectRandom GLOBAL_groundSpawnPositions, 180, selectRandom _vehicleTypes, civilian] call BIS_fnc_spawnVehicle;
_result params ["_createdVehicle", "_vehicleCrew", "_vehicleGroup"];

_createdVehicle setVehicleTIPars [0.35, 0.0, 0.0];

{
    _x disableAI "AUTOCOMBAT";
	_x disableAI "TARGET";
	_x disableAI "WEAPONAIM";
	_x disableAI "FSM";
	_x disableAI "ANIM";
	_x disableAI "COVER";
} forEach units _vehicleGroup;


[_vehicleGroup, getPos GroundPatrolSpot, 100] call BIS_fnc_taskPatrol;