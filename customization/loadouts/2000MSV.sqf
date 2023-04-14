// AUTHOR: Gkenny
// Early 2000s MSV
// 
// [this, "2000MSV_RF"] call FW_fnc_GearScript;
// [this, "2000MSV_MG"] call FW_fnc_GearScript;
// [this, "2000MSV_MGASST"] call FW_fnc_GearScript;
// [this, "2000MSV_RPK"] call FW_fnc_GearScript;
// [this, "2000MSV_RPG"] call FW_fnc_GearScript;
// [this, "2000MSV_RPGASST"] call FW_fnc_GearScript;
// [this, "2000MSV_EFR"] call FW_fnc_GearScript;
// [this, "2000MSV_SL"] call FW_fnc_GearScript;
// [this, "2000MSV_PL"] call FW_fnc_GearScript;
// [this, "2000MSV_COY"] call FW_fnc_GearScript;
// [this, "2000MSV_RTO"] call FW_fnc_GearScript;
// [this, "2000MSV_COYSGT"] call FW_fnc_GearScript;
// [this, "2000MSV_PLTSGT"] call FW_fnc_GearScript;
// [this, "2000MSV_MKS"] call FW_fnc_GearScript;
// [this, "2000MSV_GNR"] call FW_fnc_GearScript;
// [this, "2000MSV_DRVR"] call FW_fnc_GearScript;
// [this, "2000MSV_CMDR"] call FW_fnc_GearScript;
// [this, "2000MSV_MED"] call FW_fnc_GearScript;

#define package "2000MSV_"

SET_GROUP(uniform)
["rhs_uniform_flora"] call FUNC(addItem);
END_GROUP;

SET_GROUP(IFAK)
["ACE_fieldDressing", 3, "uniform"] call FUNC(addItem);
["ACE_elasticBandage", 3, "uniform"] call FUNC(addItem);
["ACE_packingBandage", 3, "uniform"] call FUNC(addItem);
["ACE_quikclot", 3, "uniform"] call FUNC(addItem);
["ACE_morphine", 1, "uniform"] call FUNC(addItem);
["ACE_tourniquet", 1, "uniform"] call FUNC(addItem);
END_GROUP;

SET_GROUP(items)
["ItemMap"] call FUNC(addItem);
["ItemCompass"] call FUNC(addItem);
["ItemWatch"] call FUNC(addItem);
["ACE_earplugs"] call FUNC(addItem);
END_GROUP;

SET_GROUP(helmet)
["rhs_6b26", "rhs_6b26_bala", "rhs_6b26_ess", "rhs_6b26_ess_bala"] call FUNC(AddItemRandom);
// ["rhs_6b26"] call FUNC(addItem);
END_GROUP;

case (package + "RF"): {
	// Rifleman

	["rhs_6b23_rifleman"] call FUNC(addItem); // vest
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 7, "vest"] call FUNC(addItem);// magazines

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk";// Flash hider
};

case (package + "RPG") : {
	// RPG Grenadier

	["rhs_6b23_rifleman"] call FUNC(addItem); // vest
	["rhs_rpg_empty"] call FUNC(addItem); // RPG Carrier

	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 7, "vest"] call FUNC(addItem);// magazines

	["rhs_rpg7_PG7VL_mag", 2, "backpack"] call FUNC(addItem); // RPGs
	["rhs_rpg7_OG7V_mag", 1, "backpack"] call FUNC(addItem);

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk";// Flash hider

	["rhs_weap_rpg7"] call FUNC(addItem); // RPG-7
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v3";// RPG Scope
};

case (package + "RPGASST") : {
	// RPG Assistant

	["rhs_6b23_rifleman"] call FUNC(addItem); // vest
	["rhs_rpg_empty"] call FUNC(addItem); // RPG Carrier

	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 7, "vest"] call FUNC(addItem);// magazines

	["rhs_rpg7_PG7VL_mag", 1, "backpack"] call FUNC(addItem);
	["rhs_rpg7_PG7VR_mag", 1, "backpack"] call FUNC(addItem);// RPGs
	["rhs_rpg7_OG7V_mag", 1, "backpack"] call FUNC(addItem);

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk";// Flash hider
};

case (package + "EFR") : {
	// Efreitor

	ADD_GROUP(uniform);
	["rhs_6b23_6sh92_vog_headset"] call FUNC(addItem);// vest
	["rhs_6b26_ess"] call FUNC(addItem); // helmet
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["ACRE_PRC343", 1, "uniform"] call FUNC(addItem); // SR Radio

	["rhs_mag_rgn", 1, "vest"] call FUNC(addItem); // Frag
	["rhs_mag_rdg2_white", 1, "vest"] call FUNC(addItem); // Smoke

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo

	["rhs_VOG25", 7, "vest"] call FUNC(addItem); // Frag Vogs
	["rhs_GRD40_White", 2, "vest"] call FUNC(addItem); // Smoke Vogs
	["rhs_GRD40_Green", 1, "vest"] call FUNC(addItem);
	["rhs_GRD40_Red", 1, "vest"] call FUNC(addItem);

	["rhs_weap_ak74m_gp25"] call FUNC(addItem); // AK GP
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
};

case (package + "SL") : {
	// Section leader

	ADD_GROUP(uniform);
	["rhs_6b23_6sh92_headset_mapcase"] call FUNC(addItem);// vest
	["rhs_6b26"] call FUNC(addItem); // helmet
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["ACRE_PRC343", 1, "uniform"] call FUNC(addItem); // SR Radio
	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["rhs_mag_rgn", 2, "vest"] call FUNC(addItem); // Frag
	["rhs_mag_rdg2_white", 2, "vest"] call FUNC(addItem); // Smoke

	["rhs_30Rnd_545x39_7N10_AK", 7, "vest"] call FUNC(addItem); // ammo

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
};

case (package + "PL") : {
	// PLT commander

	ADD_GROUP(uniform);
	["rhs_6b23_crewofficer"] call FUNC(addItem); // vest
	["rhs_assault_umbts"] call FUNC(addItem); // Radio backpack
	["rhs_6b26_ess", "rhs_6b26"] call FUNC(AddItemRandom); // helmet
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["ACRE_PRC343", 1, "uniform"] call FUNC(addItem); // SR Radio
	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio
	["ACRE_PRC117F", 1, "backpack"] call FUNC(addItem); // COY Radio

	["rhs_mag_rgn", 1, "vest"] call FUNC(addItem); // Frag
	["rhs_mag_rdg2_white", 1, "vest"] call FUNC(addItem); // Smoke

	["rhs_30Rnd_545x39_7N10_AK", 4, "vest"] call FUNC(addItem); // ammo
	["rhs_mag_9x18_8_57N181S", 1, "uniform"] call FUNC(addItem);
	["rhs_mag_9x18_8_57N181S", 1, "vest"] call FUNC(addItem);

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
	_unit addPrimaryWeaponItem "rhs_acc_1p29"; // Scope

	["rhs_weap_makarov_pm"] call FUNC(addItem); // Makarov PM
};

case (package + "COY") : {
	// Company commander

	ADD_GROUP(uniform);
	["rhs_6b23_crewofficer"] call FUNC(addItem); // vest
	["rhs_6b26_ess", "rhs_6b26"] call FUNC(AddItemRandom); // helmet
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["ACRE_PRC343", 1, "uniform"] call FUNC(addItem); // SR Radio
	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["rhs_mag_rdg2_white", 1, "vest"] call FUNC(addItem); // Smoke

	["rhs_30Rnd_545x39_7N10_AK", 4, "vest"] call FUNC(addItem); // ammo
	["rhs_mag_9x18_8_57N181S", 2, "vest"] call FUNC(addItem);

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
	_unit addPrimaryWeaponItem "rhs_acc_1p29"; // Scope

	["rhs_weap_makarov_pm"] call FUNC(addItem); // Makarov PM
};
case (package + "COYSGT") : {
	// Company Sergeant

	ADD_GROUP(uniform);
	["rhs_6b23_6sh92_vog_headset"] call FUNC(addItem);// vest
	["rhs_6b26_ess", "rhs_6b26"] call FUNC(AddItemRandom); // helmet
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["ACRE_PRC343", 1, "uniform"] call FUNC(addItem); // SR Radio
	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["rhs_mag_rgn", 1, "vest"] call FUNC(addItem); // Frag
	["rhs_mag_rdg2_white", 1, "vest"] call FUNC(addItem); // Smoke

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo

	["rhs_VOG25", 6, "vest"] call FUNC(addItem); // Frag Vogs
	["rhs_GRD40_White", 2, "vest"] call FUNC(addItem); // Smoke Vogs
	["rhs_GRD40_Green", 1, "vest"] call FUNC(addItem);
	["rhs_GRD40_Red", 1, "vest"] call FUNC(addItem);

	["rhs_weap_ak74m_gp25"] call FUNC(addItem); // AK GP
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
	_unit addPrimaryWeaponItem "rhs_acc_1p29"; // Scope
};
case (package + "PLTSGT") : {
	// PLT Sergeant

	ADD_GROUP(uniform);
	["rhs_6b23_6sh92_vog_headset"] call FUNC(addItem);// vest
	["rhs_6b26_ess", "rhs_6b26"] call FUNC(AddItemRandom); // helmet
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["ACRE_PRC343", 1, "uniform"] call FUNC(addItem); // SR Radio
	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["rhs_mag_rgn", 1, "vest"] call FUNC(addItem); // Frag
	["rhs_mag_rdg2_white", 1, "vest"] call FUNC(addItem); // Smoke

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo

	["rhs_VOG25", 6, "vest"] call FUNC(addItem); // Frag Vogs
	["rhs_GRD40_White", 2, "vest"] call FUNC(addItem); // Smoke Vogs
	["rhs_GRD40_Green", 1, "vest"] call FUNC(addItem);
	["rhs_GRD40_Red", 1, "vest"] call FUNC(addItem);

	["rhs_weap_ak74m_gp25"] call FUNC(addItem); // AK GP
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
};
case (package + "RTO"): {
	// RTO

	["rhs_6b23_rifleman"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["rhs_assault_umbts"] call FUNC(addItem); // Radio backpack

	["ACRE_PRC117F", 1, "backpack"] call FUNC(addItem); // COY Radio

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem);// magazines

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk";// Flash hider
};

case (package + "MKS") : {
	// Marksman

	ADD_GROUP(uniform);
	["rhs_6b23_sniper"] call FUNC(addItem);
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_mag_9x18_8_57N181S", 3, "vest"] call FUNC(addItem); // PM ammo
	["rhs_10Rnd_762x54mmR_7N1", 9, "vest"] call FUNC(addItem); // SVD ammo

	["rhs_weap_svdp"] call FUNC(addItem); // SVD
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2";// Scope

	["rhs_weap_makarov_pm"] call FUNC(addItem); // Makarov PM
};

case (package + "MG") : {
	// Machinegunner

	ADD_GROUP(uniform);
	["rhs_6b23_rifleman"] call FUNC(addItem); // vest
	["rhs_sidor"] call FUNC(addItem); // backpack
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_100Rnd_762x54mmR", 1, "vest"] call FUNC(addItem); // PKM ammo
	["rhs_100Rnd_762x54mmR", 2, "backpack"] call FUNC(addItem);

	["ruPal_rhs_weap_pkm"] call FUNC(addItem); // PKM
};
case (package + "MGASST") : {
	// MG Assistant

	["rhs_6b23_rifleman"] call FUNC(addItem); // vest

	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	["rhs_sidor"] call FUNC(addItem); // backpack
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 7, "vest"] call FUNC(addItem);// magazines
	["rhs_100Rnd_762x54mmR", 2, "backpack"] call FUNC(addItem); // PKM ammo

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk";// Flash hider
};

case (package + "DRVR") : {
	// driver

	ADD_GROUP(uniform);
	["rhs_6b23_engineer"] call FUNC(addItem); // vest
	["rhs_tsh4_ess", "rhs_tsh4_ess_bala"] call FUNC(AddItemRandom);// Helmets
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo

	["rhs_weap_aks74u"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u"; // Flash Hider
};

case (package + "GNR") : {
	// gunner

	ADD_GROUP(uniform);
	["rhs_6b23_engineer"] call FUNC(addItem); // vest
	["rhs_tsh4", "rhs_tsh4_bala"] call FUNC(AddItemRandom);// Helmets
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo

	["rhs_weap_aks74u"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u"; // Flash Hider
};

case (package + "MED") : {
	// Medic

	ADD_GROUP(uniform);
	["rhs_6b23_medic"] call FUNC(addItem); // vest
	["rhs_medic_bag"] call FUNC(addItem); // medic bag
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	ADD_GROUP(helmet);

	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["ACE_fieldDressing", 10, "vest"] call FUNC(addItem); // MED Supplies
	["ACE_elasticBandage", 10, "vest"] call FUNC(addItem);
	["ACE_quikclot", 10, "vest"] call FUNC(addItem);
	["ACE_epinephrine", 10, "vest"] call FUNC(addItem);
	["ACE_morphine", 5, "vest"] call FUNC(addItem);

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo
	["rhs_mag_rgn", 1, "vest"] call FUNC(addItem); // Frag Grenadier
	["rhs_mag_rdg2_white", 2, "vest"] call FUNC(addItem); // White Smoke

	["ACE_morphine", 15, "backpack"] call FUNC(addItem); // Med Supplies
	["ACE_packingBandage", 20, "backpack"] call FUNC(addItem);
	["ACE_fieldDressing", 10, "backpack"] call FUNC(addItem);
	["ACE_elasticBandage", 10, "backpack"] call FUNC(addItem);
	["ACE_quikclot", 10, "backpack"] call FUNC(addItem);
	["ACE_salineIV_500", 3, "backpack"] call FUNC(addItem);
	["ACE_salineIV", 1, "backpack"] call FUNC(addItem);
	["ACE_salineIV_250", 2, "backpack"] call FUNC(addItem);

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
};

case (package + "RPK") : {
	// RPK

	ADD_GROUP(uniform);
	["rhs_6b23_rifleman"] call FUNC(addItem); // vest
	["rhs_sidor"] call FUNC(addItem); // backpack
	ADD_GROUP(helmet);
	ADD_GROUP(IFAK);
	ADD_GROUP(items);

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_45Rnd_545X39_7N10_AK", 4, "vest"] call FUNC(addItem); // RPK ammo
	["rhs_45Rnd_545X39_7N10_AK", 5, "backpack"] call FUNC(addItem);
	["rhs_45Rnd_545X39_AK_Green", 1, "backpack"] call FUNC(addItem);

	["hlc_rifle_rpk"] call FUNC(addItem); // RPK
};

case (package + "CMDR") : {
	// gunner

	ADD_GROUP(uniform);
	["rhs_6b23_engineer"] call FUNC(addItem); // vest
	["rhs_tsh4", "rhs_tsh4_bala"] call FUNC(AddItemRandom);// Helmets
	ADD_GROUP(IFAK);
	ADD_GROUP(items);
	["Binocular"] call FUNC(addItem); // Binoculars

	["ACRE_PRC148", 1, "uniform"] call FUNC(addItem); // PLT Radio

	["rhs_mag_rdg2_white", 1] call FUNC(addItem);// White smoke
	["rhs_mag_rgn", 1] call FUNC(addItem);// Frag grenade

	["rhs_30Rnd_545x39_7N10_AK", 6, "vest"] call FUNC(addItem); // ammo

	["rhs_weap_ak74m"] call FUNC(addItem); // AK
	_unit addPrimaryWeaponItem "rhs_acc_dtk"; // Flash Hider
};