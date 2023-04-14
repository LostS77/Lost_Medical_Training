/*
	 * Author: Olsen
	 *
	 * stop tracking of unit by framework.
	 *
	 * Arguments:
	 * 0: unit <object>
	 *
	 * Return Value:
	 * nothing
	 *
	 * Public: No
 */

#include "script_component.hpp"

params ["_unit", ["_forcedSide", sideEmpty, [sideEmpty]]];

private _forced = _forcedSide isNotEqualTo sideEmpty;
TRACE_2("untrackUnit", _unit, _forced);

if (GETVAR(_unit, Tracked, false) || {
	_forced
}) then {
	GVAR(teams) apply {
		_x params ["", "_side", "_type", "_total", "_current"];
		if (
		(
		_forced && {
			_forcedSide isEqualTo _side
		} ||
		{
			(GETVAR(_unit, side, sideUnknown)) isEqualTo _side
		}
		) &&
		{
			(_type == "both" || _type == "any") ||
			{
				_type == "player" && {
					isPlayer _unit
				}
			} ||
			{
				_type == "ai" && {
					!isPlayer _unit
				}
			}
		}
		) exitWith {
			if (
			_forced ||
			{
				_unit call FUNC(isAlive)
			}
			) then {
				private _newCurrent = _current - 1;
				private _newTotal = _total - 1;
				TRACE_3("Setting new alive count", _unit, _newTotal, _newCurrent);
				_x set [3, _newTotal];
				_x set [4, _newCurrent];
			};
		};
	};
	_unit setVariable [QGVAR(side), nil];
	_unit setVariable [QGVAR(Tracked), nil];
};