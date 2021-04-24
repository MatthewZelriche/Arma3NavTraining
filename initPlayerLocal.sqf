["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

// List of whiteboards that will be used to start various exercises.
//TriangulationExercise addAction ["Begin Triangulation Exercise.", { params ["_target", "_caller"]; [[_caller], "scripts\begin_triangulation_exercise.sqf"] remoteExec ["execVM", 0]; }];

TriangulationExercise addAction ["Begin Triangulation Exercise.", { params ["_target", "_caller"]; execVM "scripts\begin_triangulation_exercise.sqf"; }];