{
	if ((typeOf _x == "B_CTRG_soldier_M_medic_F") && (!isPlayer _x)) then {
		deleteVehicle _x
	}
} forEach allUnits;
// deleteVehicle pat1;
sleep 2;
_group1=createGroup west;
'B_CTRG_soldier_M_medic_F' createUnit [getmarkerPos 'PatientSpawn', _group1, 'pat1=this; dostop pat1'];
pat1 disableAI "ALL";
pat1 setUnconscious false;
sleep 2;
[pat1, selectrandom [3.3, 3.1], selectrandom ["hand_l", "hand_r", "leg_l", "leg_r"], selectrandom ["bullet"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectrandom [2.0, 2.2], selectrandom ["hand_l", "hand_r", "leg_l", "leg_r"], selectrandom ["bullet"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectrandom [2.4, 2.1], selectrandom ["hand_l", "hand_r", "leg_l", "leg_r"], selectrandom ["bullet"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectrandom [2.1, 2.3], selectrandom ["hand_l", "hand_r", "leg_l", "leg_r"], selectrandom ["bullet"]] call ace_medical_fnc_addDamageToUnit;
hint 'Medical Training Dummy is ready';