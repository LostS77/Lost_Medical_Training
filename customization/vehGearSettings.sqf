/*
Call this with [this, "LOADOUT"] call FW_fnc_VehGearScript; in the Init field of the vehicle
Example:
[this, "HUMMVEE"] call FW_fnc_VehGearScript;
*/

switch (_type) do {

	case "HUMMVEE": {
		_vehicle call FUNC(RemoveAllVehicleGear);

		["30Rnd_556x45_Stanag", 8] call FUNC(AddItemVehicle);
		["rhs_weap_m4a1_carryhandle"] call FUNC(AddItemVehicle);

	};

	case "cTabBox": {
		_vehicle call FUNC(RemoveAllVehicleGear);

		["ItemcTab", 10] call FUNC(AddItemVehicle);
		["ItemcTabHCam", 10] call FUNC(AddItemVehicle);
		["ItemAndroid", 10] call FUNC(AddItemVehicle);
		["ItemMicroDAGR", 10] call FUNC(AddItemVehicle);
	};

	// To go in vehGearSettings.sqf
	case "STRYKER": {
		_vehicle call FUNC(RemoveAllVehicleGear);
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30] call FUNC(AddItemVehicle);
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 15] call FUNC(AddItemVehicle);
		["rhsusf_100Rnd_556x45_mixed_soft_pouch", 10] call FUNC(AddItemVehicle);
		["rhsusf_100Rnd_556x45_M995_soft_pouch", 5] call FUNC(AddItemVehicle);
		["rhsusf_100Rnd_762x51_m80a1epr", 5] call FUNC(AddItemVehicle);
		["rhs_mag_M441_HE", 10] call FUNC(AddItemVehicle);
		["rhs_mag_m715_Green", 5] call FUNC(AddItemVehicle);
		["rhs_mag_m713_Red", 5] call FUNC(AddItemVehicle);
		["rhs_mag_m714_White", 5] call FUNC(AddItemVehicle);
		["rhsusf_mag_17Rnd_9x19_JHP", 5] call FUNC(AddItemVehicle);
		["UK3CB_BAF_Javelin_Slung_Tube", 4] call FUNC(AddItemVehicle);
		["UK3CB_BAF_Javelin_CLU"] call FUNC(AddItemVehicle);
		["ACE_fieldDressing", 25] call FUNC(AddItemVehicle);
		["ACE_elasticBandage", 25] call FUNC(AddItemVehicle);
		["ACE_packingBandage", 25] call FUNC(AddItemVehicle);
		["ACE_quikclot", 25] call FUNC(AddItemVehicle);
		["ACE_morphine", 25] call FUNC(AddItemVehicle);
		["ACE_tourniquet", 25] call FUNC(AddItemVehicle);
		["ACE_splint", 25] call FUNC(AddItemVehicle);
		["ACE_surgicalKit",2] call FUNC(AddItemVehicle);
		["ACE_salineIV_250",8] call FUNC(AddItemVehicle);
		["ACE_salineIV_500",6] call FUNC(AddItemVehicle);
		["rhs_weap_sr25_ec", 1] call FUNC(AddItemVehicle);
		["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", 10] call FUNC(AddItemVehicle);
		["rhsusf_acc_aac_762sdn6_silencer", 1] call FUNC(AddItemVehicle);
		["rhsusf_acc_anpeq15a", 1] call FUNC(AddItemVehicle);
		["rhsusf_acc_premier", 1] call FUNC(AddItemVehicle);
		["rhsusf_acc_harris_bipod", 1] call FUNC(AddItemVehicle);
		["rhs_weap_m4a1", 1] call FUNC(AddItemVehicle);
	};

};
