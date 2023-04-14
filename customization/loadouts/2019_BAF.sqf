// AUTHOR: Gibfender
// 
// ORBAT derived from: https// www.battleorder.org/british-rifle-platoon-2019
// 
// [this, "BAF_PC"] call FW_fnc_GearScript;
// [this, "BAF_PSG"] call FW_fnc_GearScript;
// [this, "BAF_SG"] call FW_fnc_GearScript;
// [this, "BAF_MED"] call FW_fnc_GearScript;
// [this, "BAF_SC"] call FW_fnc_GearScript;
// [this, "BAF_2IC"] call FW_fnc_GearScript;
// [this, "BAF_RF"] call FW_fnc_GearScript;
// [this, "BAF_GR"] call FW_fnc_GearScript;
// [this, "BAF_SS"] call FW_fnc_GearScript;
// [this, "BAF_MG"] call FW_fnc_GearScript;
// [this, "BAF_ENG"] call FW_fnc_GearScript;
// [this, "BAF_CR"] call FW_fnc_GearScript;
// [this, "BAF_HELI"] call FW_fnc_GearScript;
// [this, "BAF_MoL"] call FW_fnc_GearScript;
// [this, "BAF_MoG"] call FW_fnc_GearScript;
// [this, "BAF_MoC"] call FW_fnc_GearScript;
// [this, "BAF_AMG"] call FW_fnc_GearScript;
// [this, "BAF_JAV"] call FW_fnc_GearScript;
// [this, "BAF_NLAW"] call FW_fnc_GearScript;

#define package "BAF_"

// MTP uniform
SET_GROUP(uniform)
["UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve", "UK3CB_BAF_U_RolledUniform_MTP", "UK3CB_BAF_U_JumperUniform_MTP"] call FUNC(AddItemRandom);// uniform
["UK3CB_BAF_H_Mk7_Camo_A", "UK3CB_BAF_H_Mk7_Camo_B", "UK3CB_BAF_H_Mk7_Camo_C", "UK3CB_BAF_H_Mk7_Camo_D", "UK3CB_BAF_H_Mk7_Camo_E", "UK3CB_BAF_H_Mk7_Camo_F", "UK3CB_BAF_H_Mk7_Camo_CESS_A", "UK3CB_BAF_H_Mk7_Camo_CESS_B", "UK3CB_BAF_H_Mk7_Camo_CESS_C", "UK3CB_BAF_H_Mk7_Camo_CESS_D", "UK3CB_BAF_H_Mk7_Camo_ESS_A", "UK3CB_BAF_H_Mk7_Camo_ESS_B", "UK3CB_BAF_H_Mk7_Camo_ESS_C", "UK3CB_BAF_H_Mk7_Camo_ESS_D", "UK3CB_BAF_H_Mk7_Net_A", "UK3CB_BAF_H_Mk7_Net_B", "UK3CB_BAF_H_Mk7_Net_C", "UK3CB_BAF_H_Mk7_Net_D", "UK3CB_BAF_H_Mk7_Net_CESS_A", "UK3CB_BAF_H_Mk7_Net_CESS_B", "UK3CB_BAF_H_Mk7_Net_CESS_C", "UK3CB_BAF_H_Mk7_Net_CESS_D", "UK3CB_BAF_H_Mk7_Net_ESS_A", "UK3CB_BAF_H_Mk7_Net_ESS_B", "UK3CB_BAF_H_Mk7_Net_ESS_C", "UK3CB_BAF_H_Mk7_Net_ESS_D", "UK3CB_BAF_H_Mk7_Scrim_A", "UK3CB_BAF_H_Mk7_Scrim_B", "UK3CB_BAF_H_Mk7_Scrim_C", "UK3CB_BAF_H_Mk7_Scrim_D", "UK3CB_BAF_H_Mk7_Scrim_E", "UK3CB_BAF_H_Mk7_Scrim_F", "UK3CB_BAF_H_Mk7_Scrim_ESS_A", "UK3CB_BAF_H_Mk7_Scrim_ESS_B", "UK3CB_BAF_H_Mk7_Scrim_ESS_C"] call FUNC(AddItemRandom);// helmet
["UK3CB_BAF_G_Tactical_Black", "UK3CB_BAF_G_Tactical_Clear", "UK3CB_BAF_G_Tactical_Grey", "UK3CB_BAF_G_Tactical_Orange", "UK3CB_BAF_G_Tactical_Yellow"] call FUNC(AddItemRandom);// goggles
END_GROUP;

// medical gear
SET_GROUP(IFAK)
["ACE_fieldDressing", 5, "uniform"] call FUNC(addItem);
["ACE_elasticBandage", 5, "uniform"] call FUNC(addItem);
["ACE_packingBandage", 5, "uniform"] call FUNC(addItem);
["ACE_quikclot", 5, "uniform"] call FUNC(addItem);
["ACE_morphine", 1, "uniform"] call FUNC(addItem);
["ACE_tourniquet", 1, "uniform"] call FUNC(addItem);
["ACE_splint", 1, "uniform"] call FUNC(addItem);
END_GROUP;

// odds and sods
SET_GROUP(items)
["ACRE_PRC343", 1] call FUNC(addItem);
["UK3CB_BAF_HMNVS"] call FUNC(addItem);
["ItemMap"] call FUNC(addItem);
["ItemCompass"] call FUNC(addItem);
["ItemWatch"] call FUNC(addItem);
["ACE_MapTools"] call FUNC(addItem);
END_GROUP;

SET_GROUP(grenades)
["UK3CB_BAF_SmokeShell", 1, "uniform"] call FUNC(addItem);
["HandGrenade", 2, "uniform"] call FUNC(addItem);
END_GROUP;

SET_GROUP(L85)
["UK3CB_BAF_556_30Rnd", 8, "vest"] call FUNC(addItem);
["UK3CB_BAF_556_30Rnd_T", 2, "vest"] call FUNC(addItem);
["UK3CB_BAF_9_17Rnd", 3, "vest"] call FUNC(addItem);
["UK3CB_BAF_L85A3"] call FUNC(addItem);
["UK3CB_BAF_TA31F_Hornbill"] call FUNC(addItem);
["UK3CB_BAF_SFFH"] call FUNC(addItem);
["uk3cb_underbarrel_acc_grippod"] call FUNC(addItem);
["uk3cb_baf_llm_ir_black"] call FUNC(addItem);
["UK3CB_BAF_L131A1"] call FUNC(addItem);
["uk3cb_baf_flashlight_l131a1"] call FUNC(addItem);
END_GROUP;

SET_GROUP(L85GL)
["UK3CB_BAF_556_30Rnd", 8, "vest"] call FUNC(addItem);
["UK3CB_BAF_556_30Rnd_T", 2, "vest"] call FUNC(addItem);
["UK3CB_BAF_9_17Rnd", 3, "vest"] call FUNC(addItem);
["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", 10, "vest"] call FUNC(addItem);
["UK3CB_BAF_1Rnd_Smoke_Grenade_shell", 5, "vest"] call FUNC(addItem);
["UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell", 2, "vest"] call FUNC(addItem);
["UK3CB_BAF_1Rnd_SmokeGreen_Grenade_shell", 2, "vest"] call FUNC(addItem);
["UK3CB_BAF_L85A3_UGL"] call FUNC(addItem);
["UK3CB_BAF_TA31F_Hornbill"] call FUNC(addItem);
["UK3CB_BAF_SFFH"] call FUNC(addItem);
["uk3cb_baf_llm_ir_black"] call FUNC(addItem);
["UK3CB_BAF_L131A1"] call FUNC(addItem);
["uk3cb_baf_flashlight_l131a1"] call FUNC(addItem);
END_GROUP;

SET_GROUP(crossload)
["UK3CB_BAF_762_100Rnd", 1, "backpack"] call FUNC(addItem);
["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 2, "backpack"] call FUNC(addItem);
END_GROUP;

// Platoon commander
// [this, "BAF_PC"] call FW_fnc_GearScript;
case (package + "PC"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_SL_L_A"] call FUNC(addItem);
	["Binocular"] call FUNC(addItem);
	["ACRE_PRC152", 1, "vest"] call FUNC(addItem);
	["ACE_DAGR"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	ADD_GROUP(crossload);
};

// Platoon Sargeant
// [this, "BAF_PSG"] call FW_fnc_GearScript;
case (package + "PSG"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_SL_L_A"] call FUNC(addItem);
	["Binocular"] call FUNC(addItem);
	["ACRE_PRC152", 1, "vest"] call FUNC(addItem);
	["ACE_DAGR"] call FUNC(addItem);
	ADD_GROUP(grenades);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(L85GL);
	ADD_GROUP(crossload);
};

// Signaller
// [this, "BAF_SG"] call FW_fnc_GearScript;
case (package + "SG"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Radio_L_A", "UK3CB_BAF_B_Bergen_MTP_Radio_L_B"] call FUNC(AddItemRandom);
	["ACRE_PRC152", 1, "vest"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	ADD_GROUP(crossload);
};

// Medic (2x in Platoon HQ, Usually a Runner IRL)
// [this, "BAF_MED"] call FW_fnc_GearScript;
case (package + "MED"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Medic_A", "UK3CB_BAF_V_Osprey_Medic_B", "UK3CB_BAF_V_Osprey_Medic_C", "UK3CB_BAF_V_Osprey_Medic_D"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Medic_L_A", "UK3CB_BAF_B_Bergen_MTP_Medic_L_B"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	["UK3CB_BAF_SmokeShell", 2, "vest"] call FUNC(addItem);
	ADD_GROUP(L85);
	["ACE_surgicalKit", 1, "backpack"] call FUNC(addItem);
	["ACE_fieldDressing", 25, "backpack"] call FUNC(addItem);
	["ACE_elasticBandage", 25, "backpack"] call FUNC(addItem);
	["ACE_packingBandage", 25, "backpack"] call FUNC(addItem);
	["ACE_quikclot", 25, "backpack"] call FUNC(addItem);
	["ACE_morphine", 15, "backpack"] call FUNC(addItem);
	["ACE_epinephrine", 15, "backpack"] call FUNC(addItem);
	["ACE_tourniquet", 10, "backpack"] call FUNC(addItem);
	["ACE_splint", 10, "backpack"] call FUNC(addItem);
	["ACE_salineIV_250", 8, "backpack"] call FUNC(addItem);
	["ACE_salineIV_500", 6, "backpack"] call FUNC(addItem);
};

// Section commander
// [this, "BAF_SC"] call FW_fnc_GearScript;
case (package + "SC"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_SL_L_A"] call FUNC(addItem);
	["Binocular"] call FUNC(addItem);
	["ACRE_PRC152", 1, "vest"] call FUNC(addItem);
	["ACE_DAGR"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85GL);
	ADD_GROUP(crossload);
};

// Section 2IC
// [this, "BAF_2IC"] call FW_fnc_GearScript;
case (package + "2IC"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	["Binocular"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["UK3CB_BAF_762_100Rnd", 5, "backpack"] call FUNC(addItem);
};

// Rifleman
// [this, "BAF_RF"] call FW_fnc_GearScript;
case (package + "RF"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	ADD_GROUP(crossload);
};

// Grenadier
// [this, "BAF_GR"] call FW_fnc_GearScript;
case (package + "GR"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Grenadier_A", "UK3CB_BAF_V_Osprey_Grenadier_B"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85GL);
	ADD_GROUP(crossload);
};

// Sharpshooter
// [this, "BAF_SS"] call FW_fnc_GearScript;
case (package + "SS"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Marksman_A"] call FUNC(addItem);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	["UK3CB_BAF_762_L42A1_20Rnd", 9, "vest"] call FUNC(addItem);
	["UK3CB_BAF_762_L42A1_20Rnd_T", 2, "vest"] call FUNC(addItem);
	["UK3CB_BAF_9_17Rnd", 3, "vest"] call FUNC(addItem);
	["UK3CB_BAF_L129A1"] call FUNC(addItem);
	["uk3cb_baf_ta648"] call FUNC(addItem);
	["uk3cb_underbarrel_acc_fgrip_bipod"] call FUNC(addItem);
	["UK3CB_BAF_LLM_IR_Black"] call FUNC(addItem);
	["UK3CB_BAF_L131A1"] call FUNC(addItem);
	["uk3cb_baf_flashlight_l131a1"] call FUNC(addItem);
	ADD_GROUP(crossload);
};

// Machine gunner
// [this, "BAF_MG"] call FW_fnc_GearScript;
case (package + "MG"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_MG_A", "UK3CB_BAF_V_Osprey_MG_B"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	["UK3CB_BAF_762_100Rnd", 3, "vest"] call FUNC(addItem);
	["UK3CB_BAF_762_100Rnd_T", 1, "vest"] call FUNC(addItem);
	["UK3CB_BAF_9_17Rnd", 3, "vest"] call FUNC(addItem);
	["UK3CB_BAF_L7A2"] call FUNC(addItem);
	["UK3CB_BAF_L131A1"] call FUNC(addItem);
	["uk3cb_baf_flashlight_l131a1"] call FUNC(addItem);
	ADD_GROUP(crossload);
};

// Assistant Machine gunner
// [this, "BAF_AMG"] call FW_fnc_GearScript;
case (package + "AMG"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	["Binocular"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["UK3CB_BAF_762_100Rnd", 5, "backpack"] call FUNC(addItem);
};

// Javelin gunner
// [this, "BAF_JAV"] call FW_fnc_GearScript;
case (package + "JAV"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["UK3CB_BAF_Javelin_CLU", 1, "backpack"] call FUNC(addItem);
	["UK3CB_BAF_Javelin_Slung_Tube"] call FUNC(addItem);
};

// NLAW Rifleman
// 
// Rifleman
// [this, "BAF_NLAW"] call FW_fnc_GearScript;
case (package + "NLAW"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	ADD_GROUP(crossload);
	["UK3CB_BAF_NLAW_Launcher"] call FUNC(addItem);
};

// Mortar commander
// [this, "BAF_MoC"] call FW_fnc_GearScript;
case (package + "MoC"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	["Binocular"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	["UK3CB_BAF_M6_RangeTable"] call FUNC(addItem);
	["ACRE_PRC152", 1, "vest"] call FUNC(addItem);
	["ACE_DAGR"] call FUNC(addItem);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 6, "backpack"] call FUNC(addItem);
	["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White", 3, "backpack"] call FUNC(addItem);
};

// M6 Mortar gunner
// [this, "BAF_MoG"] call FW_fnc_GearScript;
case (package + "MoG"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	["UK3CB_BAF_M6_RangeTable"] call FUNC(addItem);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 3, "backpack"] call FUNC(addItem);
	["UK3CB_BAF_M6"] call FUNC(addItem);
};

// M6 Mortar Loader
// [this, "BAF_MoL"] call FW_fnc_GearScript;
case (package + "MoL"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D"] call FUNC(AddItemRandom);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	["UK3CB_BAF_M6_RangeTable"] call FUNC(addItem);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["UK3CB_BAF_1Rnd_60mm_Mo_Shells", 6, "backpack"] call FUNC(addItem);
	["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White", 3, "backpack"] call FUNC(addItem);
};

// Helicopter Pilot
// [this, "BAF_HELI"] call FW_fnc_GearScript;
case (package + "HELI"): {
	["UK3CB_BAF_U_HeliPilotCoveralls_Army"] call FUNC(addItem);
	["UK3CB_BAF_V_Pilot_A"] call FUNC(addItem);
	["UK3CB_BAF_H_PilotHelmetHeli_A"] call FUNC(addItem);
	["UK3CB_BAF_G_Tactical_Grey"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	["UK3CB_ACR_30rnd_556x45", 4, "vest"] call FUNC(addItem);
	["UK3CB_BAF_L22A2"] call FUNC(addItem);
};

// Crewman
// [this, "BAF_CR"] call FW_fnc_GearScript;
case (package + "CR"): {
	["UK3CB_BAF_U_CombatUniform_MTP"] call FUNC(addItem);
	["UK3CB_BAF_V_Osprey_Lite"] call FUNC(addItem);
	["UK3CB_BAF_H_CrewHelmet_A"] call FUNC(addItem);
	["G_Combat"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	["UK3CB_ACR_30rnd_556x45", 4, "vest"] call FUNC(addItem);
	["UK3CB_BAF_L22A2"] call FUNC(addItem);
};

// Engineer
// [this, "BAF_ENG"] call FW_fnc_GearScript;
case (package + "ENG"): {
	ADD_GROUP(uniform);
	["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_E", "UK3CB_BAF_V_Osprey_Rifleman_F"] call FUNC(AddItemRandom);
	["UK3CB_BAF_B_Bergen_MTP_Engineer_L_A"] call FUNC(addItem);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(grenades);
	ADD_GROUP(L85);
	["ToolKit", 1, "backpack"] call FUNC(addItem);
	["ACE_wirecutter", 1, "backpack"] call FUNC(addItem);
	["ACE_DefusalKit", 1, "backpack"] call FUNC(addItem);
	["ACE_Clacker", 1, "backpack"] call FUNC(addItem);
	["DemoCharge_Remote_Mag", 2, "backpack"] call FUNC(addItem);
};