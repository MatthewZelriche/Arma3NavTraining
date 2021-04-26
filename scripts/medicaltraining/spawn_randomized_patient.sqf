params ["_spawnPos"];

private _bodyParts = ["Body", "LeftLeg", "RightArm", "RightLeg", "LeftArm", "Head"];
private _damageTypes =  ["bullet", "stab", "explosive", "falling", "vehiclecrash"];

// Prevent more than one patient from spawning into a medic training zone.
private _canSpawnPatient = true;
{
	_canSpawnPatient = false;	
} forEach (allUnits inAreaArray _spawnPos);

if (_canSpawnPatient == true) then {
	private _patient = group player createUnit ["C_man_1", getPos _spawnPos, [], 0, "NONE"];

	// Select random injury severities for a random number of body parts. 
	private _injurySeverity = [];
	private _numOfInjuries = random [0, 3, 5];
	for "_i" from 0 to _numOfInjuries do {
		_injurySeverity pushBack random [0.3, 0.9, 2.0];
	};

	// Apply damage with randomized damage types.
	{
		[_patient, _x, _bodyParts select _forEachIndex, _damageTypes selectRandomWeighted [0.5, 0.5, 0.4, 0.4, 0.3, 0.2, 0.1, 0.1]] call ace_medical_fnc_addDamageToUnit;
	} forEach _injurySeverity;

	[_patient, true, 0, true] call ACE_medical_fnc_setUnconscious;
	_patient disableAI "MOVE";
} else {
	hint "You already have a patient.";
};