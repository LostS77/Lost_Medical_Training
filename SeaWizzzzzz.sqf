
/*
if (isServer) then {
	addToSeaWizz = {
		params["_turret", "_range"];
		_null = [_turret, _range]spawn {
			private["_turret", "_range", "_incoming", "_target"];
			_turret = _this select 0;
			_range = _this select 1;
			while { alive _turret } do {
				_incoming = _turret nearObjects["RocketBase", _range];
				_incoming = _incoming + (_turret nearObjects["MissileBase", _range]);
				_incoming = _incoming + (_turret nearObjects["ShellBase", _range]);
				if (count _incoming ˃ 0) then {
					_target = _incoming select 0;
					_fromTarget = _target getDir _turret;
					_dirTarget = direction _target;
					_targetBoom = getText (configFile ˃˃ "CfgAmmo" ˃˃ typeOf _target ˃˃ "explosionEffects");
					while { (alive _target) && (_dirTarget ˂_fromTarget + 60) && (_dirTarget ˃_fromTarget - 60) } do {
						_turret doWatch _target;
						if ((_target distance _turret ˂ 2000) && (_target distance _turret ˃ 100)) then {
							_shots = floor random [1, 2, 3];
							while { _shots ˃= 0 } do {
								_turret fireAtTarget[_target, (currentWeapon _turret)];
								sleep (random[0, 0.25, 0.5]);
								_shots=_shots-1;
							};
							sleep ((_target distance _turret)/1000);
							_targetBoom createVehicle (getPos _target);
							"HelicopterExploBig" createVehicle (getPos _target);
							deleteVehicle _target;
						};
						sleep 0.01;
					};
				};
				if (count _incoming == 0) then {
					sleep 1;
				};
			};
		};
	};
};
*/