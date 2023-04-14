#include "script_component.hpp"
#include "..\..\settings.sqf"

#include "..\..\Dia\Dia_PointFiremission.sqf"
#include "..\..\Dia\Dia_LineFiremission.sqf"
#include "..\..\Dia\Dia_BracketFiremission.sqf"
#include "..\..\Dia\Dia_DonutFiremission.sqf"
#include "..\..\Dia\Dia_MarkerFiremission.sqf"
#include "..\..\Dia\Dia_GridSpottingFiremission.sqf"
#include "..\..\Dia\Dia_PolarSpottingFiremission.sqf"
#include "..\..\Dia\Dia_PolarFiremission.sqf"
//expected [paths aviable,units aviable,min ammount of Units spawned, max ammount of units spawned,max ammount of units in the field,delay from mission start,delay between spawns,should clean]

["Event_ArtPlayerJipped", {_this call FUNC(FIREMIS_ArtMakePlayerObserverServer)}] call CBA_fnc_addEventHandler;

["Event_ArtyReceiveHint", {hint _this;}] call CBA_fnc_addEventHandler;
["Event_ReceiveFoGuns", {_this call FUNC(FIREMIS_ClientAddAceArtilleryOption)}] call CBA_fnc_addEventHandler;
