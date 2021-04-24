// Modified from: https://forums.bohemia.net/forums/topic/219698-draw-circle-on-terrain-in-script/?tab=comments#comment-3318009
params ["_centerPos", "_distance"];
_centerPos params ["_centerPosX","_centerPosY"];
_angle = 2;

"Land_SurveyMarker_01_post_F" createVehicle _centerPos;
for "_i" from 0 to (360-_angle) step _angle do {
	"Sign_Arrow_F" createVehicle [_distance*cos(_i) + _centerPosX,_distance*sin(_i) + _centerPosY];
};