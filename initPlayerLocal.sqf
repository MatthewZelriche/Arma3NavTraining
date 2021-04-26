["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

// List of whiteboards that will be used to start various exercises.
NavigationTraining addAction ["Begin Triangulation Exercise.", { params ["_target", "_caller"]; execVM "scripts\begin_triangulation_exercise.sqf"; }];

ClearMedicalArea01 addAction ["Clear bodies.", { [MedicalClearTrigger01] call mz_medic_fnc_clearMedicalArea; } ];
ClearMedicalArea02 addAction ["Clear bodies.", { [MedicalClearTrigger02] call mz_medic_fnc_clearMedicalArea; } ];
SpawnPatient01 addAction ["Spawn randomized patient.", { [MedicalClearTrigger01] call mz_medic_fnc_spawnRandomizedPatient; } ];
SpawnPatient02 addAction ["Spawn randomized patient.", { [MedicalClearTrigger02] call mz_medic_fnc_spawnRandomizedPatient; } ];