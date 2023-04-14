#include "script_component.hpp"

params ["_display"];

if !(GETMVAR(loadingScreen, false)) exitWith {};

private _image = getMissionConfigValue ["loadScreen", ""];
if (_image isEqualTo "") then {
	_image = getMissionConfigValue ["overViewPicture", ""];
};
private _author = getMissionConfigValue ["author", ""];
private _name = briefingName;
if (_name isEqualTo "") then {
	_name = getMissionConfigValue ["onLoadName", ""];
};
private _description = getMissionConfigValue ["OnLoadMission", ""];
if (_description isEqualTo "") then {
	_description = getMissionConfigValue ["overviewText", ""];
};

private _background = _display ctrlCreate ["RscPicture", -1];
_background ctrlSetPosition [
	safeZoneXAbs,
	0.075 * safeZoneH + safeZoneY,
	safeZoneWAbs,
	0.925 * safeZoneH
];
_background ctrlCommit 0;
_background ctrlSetText "#(rgb, 8, 8, 3)color(0, 0, 0, 1)";

private _backgroundTop = _display ctrlCreate ["RscPicture", -1];
_backgroundTop ctrlSetPosition [
	safeZoneXAbs,
	0 * safeZoneH + safeZoneY,
	safeZoneWAbs,
	0.065 * safeZoneH
];
_backgroundTop ctrlCommit 0;
_backgroundTop ctrlSetText "#(rgb, 8, 8, 3)color(0, 0, 0, 1)";

if !(_image isEqualTo "") then {
	private _ctrl = _display ctrlCreate ["RscPicture", -1];
	_ctrl ctrlSetPosition [
		safeZoneX,
		0.075 * safeZoneH + safeZoneY,
		safeZoneW,
		0.925 * safeZoneH
	];
	_ctrl ctrlCommit 0;
	_ctrl ctrlSetText _image;
};

if !(_name isEqualTo "") then {
	private _ctrl = _display ctrlCreate ["RscStructuredText", -1];
	_ctrl ctrlSetPosition [safeZoneX, 0.01 * safeZoneH + safeZoneY, 1 * safeZoneW, 0.05 * safeZoneH];
	_ctrl ctrlCommit 0;
	_ctrl ctrlSetStructuredText (parseText format ["<t size='1.5' align='center' valign='top' shadow='2' font='PuristaSemibold'>%1</t>", _name]);
};

if !(_author isEqualTo "") then {
	private _ctrl = _display ctrlCreate ["RscStructuredText", -1];
	_ctrl ctrlSetPosition [0.8 * safeZoneW + safeZoneX, 0.02 * safeZoneH + safeZoneY, 0.2 * safeZoneW, 0.1 * safeZoneH];
	_ctrl ctrlCommit 0;
	_ctrl ctrlSetStructuredText (parseText format ["<t size='1.2' align='center' valign='top' shadow='2' font='PuristaSemibold'>By: %1</t>", _author]);
};

if !(_description isEqualTo "") then {
	private _descriptionBox = _display ctrlCreate ["RscPicture", -1];
	_descriptionBox ctrlSetPosition [0.25 * safeZoneW + safeZoneX, 0.75 * safeZoneH + safeZoneY, 0.5 * safeZoneW, 0.2 * safeZoneH];
	_descriptionBox ctrlCommit 0;
	_descriptionBox ctrlSetText "#(rgb, 8, 8, 3)color(0, 0, 0, 0.5)";

	private _ctrl = _display ctrlCreate ["RscStructuredText", -1];
	_ctrl ctrlSetPosition [0.25 * safeZoneW + safeZoneX, 0.755 * safeZoneH + safeZoneY, 0.5 * safeZoneW, 0.19 * safeZoneH];
	_ctrl ctrlCommit 0;
	_ctrl ctrlSetText _description;
	_ctrl ctrlSetStructuredText (parseText format ["<t size='1.25' align='center' valign='top' shadow='2' font='PuristaSemibold'>%1</t>", _description]);
};