// AUTHOR: Olsen
// 
// [this, "RURiflePlatoon_SL"] call FW_fnc_GearScript;
// [this, "RURiflePlatoon_TL"] call FW_fnc_GearScript;
// [this, "RURiflePlatoon_AR"] call FW_fnc_GearScript;
// [this, "RURiflePlatoon_MD"] call FW_fnc_GearScript;
// [this, "RURiflePlatoon_RF"] call FW_fnc_GearScript;
// [this, "RURiflePlatoon_RFAT"] call FW_fnc_GearScript;

#define package "RURiflePlatoon_"

SET_GROUP(uniform)
["rhs_uniform_vdv_emr_des"] call FUNC(addItem);
["rhs_assault_umbts"] call FUNC(addItem);
["rhs_6b28"] call FUNC(AddItemRandom);
END_GROUP;

SET_GROUP(IFAK)
["ACE_fieldDressing", 6, "uniform"] call FUNC(addItem);
["ACE_elasticBandage", 6, "uniform"] call FUNC(addItem);
["ACE_packingBandage", 6, "uniform"] call FUNC(addItem);
["ACE_quikclot", 6, "uniform"] call FUNC(addItem);
["ACE_morphine", 1, "uniform"] call FUNC(addItem);
["ACE_epinephrine", 1, "uniform"] call FUNC(addItem);
["ACE_tourniquet", 1, "uniform"] call FUNC(addItem);
END_GROUP;

SET_GROUP(items)
["ACRE_PRC343", 1] call FUNC(addItem);
["ItemMap"] call FUNC(addItem);
["ItemCompass"] call FUNC(addItem);
["ItemWatch"] call FUNC(addItem);
["ACE_MapTools"] call FUNC(addItem);
["ACE_earplugs"] call FUNC(addItem);
END_GROUP;

case (package + "SL"): {
	["rhs_6b23_digi_6sh92_headset_mapcase"] call FUNC(addItem);// vest

	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["Binocular"] call FUNC(addItem);

	["ACRE_PRC152", 1] call FUNC(addItem);// Long range radio

	["rhs_30Rnd_545x39_7N10_AK", 11] call FUNC(addItem);// magazines
	["rhs_30Rnd_545x39_AK_green", 2] call FUNC(addItem);// magazines

	["rhs_mag_rdg2_white", 2] call FUNC(addItem);// White smoke
	["rhs_mag_rdg2_black", 2] call FUNC(addItem);// Black smoke
	["rhs_mag_rgd5", 2] call FUNC(addItem);// Frag grenade

	["rhs_weap_ak74m"] call FUNC(addItem);// Primary rifle
	["rhs_acc_pkas"] call FUNC(addItem);// Red dot sight
};

case (package + "TL"): {
	["rhs_6b23_digi_6sh92_radio"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_30Rnd_545x39_7N10_AK", 11] call FUNC(addItem);// magazines
	["rhs_30Rnd_545x39_AK_green", 2] call FUNC(addItem);// magazines

	["rhs_mag_rdg2_white", 2] call FUNC(addItem);// White smoke
	["rhs_mag_rdg2_black", 2] call FUNC(addItem);// Black smoke
	["rhs_mag_rgd5", 2] call FUNC(addItem);// Frag grenade

	["rhs_VOG25", 12] call FUNC(addItem);// Frag Grenade  (m203)
	["rhs_GRD40_White", 6] call FUNC(addItem);// Red Smoke  (m203)

	["rhs_weap_ak74m_gp25"] call FUNC(addItem);// Primary rifle
	["rhs_acc_pkas"] call FUNC(addItem);// Red dot sight
};

case (package + "AR"): {
	["rhs_6b23_digi_6sh92"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 2] call FUNC(addItem);// White smoke
	["rhs_mag_rgd5", 2] call FUNC(addItem);// Frag grenade

	["rhs_100Rnd_762x54mmR", 3] call FUNC(addItem);// magazines

	["rhs_weap_pkp"] call FUNC(addItem);// Primary rifle
	["rhs_acc_pkas"] call FUNC(addItem);// Red dot sight
	["ACE_SpareBarrel", 1] call FUNC(addItem);  // Spare Barrel
};

case (package + "RFAT"): {
	["rhs_6b23_digi_6sh92"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 2] call FUNC(addItem);// White smoke
	["rhs_mag_rgd5", 2] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 11] call FUNC(addItem);// magazines

	["rhs_weap_ak74m"] call FUNC(addItem);// Primary rifle
	["rhs_acc_pkas"] call FUNC(addItem);// Red dot sight

	["rhs_weap_rpg26"] call FUNC(addItem);// Anti tank launcher
};

case (package + "RF"): {
	["rhs_6b23_digi_6sh92"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 2] call FUNC(addItem);// White smoke
	["rhs_mag_rgd5", 2] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 11] call FUNC(addItem);// magazines

	["rhs_weap_ak74m"] call FUNC(addItem);// Primary rifle
	["rhs_acc_pkas"] call FUNC(addItem);// Red dot sight

	["rhs_100Rnd_762x54mmR", 1] call FUNC(addItem);// Spare AR ammo
};

case (package + "MD"): {
	["rhs_6b23_digi_6sh92"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 4] call FUNC(addItem);// White smoke

	["rhs_30Rnd_545x39_7N10_AK", 6] call FUNC(addItem);// magazines

	["rhs_weap_ak74m"] call FUNC(addItem);// Primary rifle
	["rhs_acc_pkas"] call FUNC(addItem);// Red dot sight

	// Extra Medic Supplies
	["ACE_fieldDressing", 15] call FUNC(addItem);
	["ACE_elasticBandage", 20] call FUNC(addItem);
	["ACE_packingBandage", 20] call FUNC(addItem);
	["ACE_quikclot", 12] call FUNC(addItem);
	["ACE_atropine", 10] call FUNC(addItem);
	["ACE_morphine", 8] call FUNC(addItem);
	["ACE_epinephrine", 8] call FUNC(addItem);
	["ACE_tourniquet", 5] call FUNC(addItem);
	["ACE_salineIV_500", 1] call FUNC(addItem);
	["ACE_surgicalKit", 3] call FUNC(addItem);
	["ACE_personalAidKit", 3] call FUNC(addItem);
};