params ["_triggerArea"];

{
	deleteVehicle _x;	
} forEach (allUnits inAreaArray _triggerArea);
{
	deleteVehicle _x;	
} forEach (allDead inAreaArray _triggerArea);