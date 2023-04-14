/*
	 * Author: Olsen
	 *
	 * If unit is tracked increase number of alive units on it's team.
	 *
	 * Arguments:
	 * 0: unit to track <object>
	 *
	 * Return Value:
	 * nothing
	 *
	 * Public: No
 */

#include "script_component.hpp"

params ["_unit"];

SETPVAR(_unit, side, (side _unit));

if (
!isNull _unit &&
{
	isPlayer _unit ||
	{
		!(GETVAR(_unit, DontTrack, false))
	}
} &&
{
	!(GETVAR(_unit, Tracked, false))
} &&
{
	_unit call FUNC(isAlive)
}
) then {
	SETPVAR(_unit, Tracked, true);
	    SETPVAR(_unit, HasDied, false);// we will use this variable to make sure killed eventHandler doesn't fire twice
	GVAR(teams) apply {
		_x params ["_name", "_side", "_type", "_total", "_current"];
		if (((GETVAR(_unit, side, sideUnknown)) isEqualTo _side) &&
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
			private _newCurrent = _current + 1;
			private _newTotal = _total + 1;
			TRACE_3("Setting new alive count", _unit, _newTotal, _newCurrent);
			_x set [3, _newTotal];
			_x set [4, _newCurrent];
		};
	};
};