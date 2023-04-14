// Module by Starfox64 (STEAM_0:1:37636871)// 

// if you wish to use this EndScreen please use the following syntax to update endConditions.sqf

// FW_fnc_EndMission Syntax:
// COOP
// [string EndType (endTypes.hpp), bool isVictory] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code
// 
// TVT
// [[side/array/unit Target, string EndType, bool isVictory], [side/array/unit Target, string EndType, bool isVictory]] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code
// 
// TVT Example:
// opfor Victory
// [[west, "BLUFOREliminated", false], [east, "BLUFOREliminated", false]] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code
// 
// blufor Victory
// [[west, "OPFOREliminated", true], [east, "OPFOREliminated", false]] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code
// 
// COOP Examples:
// ["BLUFOREliminated", false] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code
// ["OPFOREliminated", true] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code
// ["TimeLimit", false] call A3END_fnc_EndMission; or call EFUNC(A3END, endMission) from within code

// ENABLE_A3_ENDSCREEN
// Whether or not to use the ArmA 3 gorgeous EndScreen.
#define ENABLE_A3_ENDSCREEN true