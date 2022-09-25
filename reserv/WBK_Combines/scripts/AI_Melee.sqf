_unitWithSword = _this;
if (isPlayer _unitWithSword) exitWith {};
_unitWithSword setVariable ["IMS_ISAI",1, true];
_unitWithSword setVariable ["IMS_IsAnimPlayed",0, true];
_unitWithSword setVariable ["actualSwordBlock",0, true];
_unitWithSword setVariable ["canMakeAttack",0, true];
_unitWithSword setVariable ["AI_CanTurn",0, true];
_unitWithSword setVariable ["concentrationParam",0.7, true];
_unitWithSword setVariable ["disableUnitSFX",1, true];


animPush = {
_unit = _this select 0;
_anim = _this select 1;
_myNearestEnemy = _unit findNearestEnemy _unit;
_ifInter = lineIntersectsSurfaces [
		AGLToASL (_myNearestEnemy modelToWorld [0,0,0.1]), 
		AGLToASL (_unit modelToWorld [0,0,0.1]), 
		_unit,
		_myNearestEnemy,
		true,
		1,
		"GEOM",
		"NONE"
	];
if ( (_unit getVariable "IMS_IsAnimPlayed" == 0) and (alive _unit) and (_unit getVariable "canMakeAttack" == 0) and (isTouchingGround _unit) and (count _ifInter == 0) and !(animationState _unit == "starWars_lightsaber_block_1") and !(animationState _unit == "starWars_lightsaber_block_2") and !(animationState _unit == "starWars_lightsaber_block_3") and !(animationState _unit == "starWars_lightsaber_hit_1") and !(animationState _unit == "starWars_lightsaber_hit_2") and !(animationState _unit == "starWars_lightsaber_blockPursuit")) then {
    _unit setVariable ["IMS_IsAnimPlayed",1, true];
    sleep 0.5;
    if ((_unit getVariable "canMakeAttack" == 0)) then {
      _unit playMoveNow _anim;
    };
    sleep 1;
    _unit setVariable ["IMS_IsAnimPlayed",0, true];
};
};

if (isNil {_unitWithSword getVariable "IMS_CustomHealthDamage"}) then {
_unitWithSword setVariable ["IMS_CustomHealthDamage",IMS_CustomImsHealthDamage, true];
};
[_unitWithSword, {
_this removeAllEventHandlers "HitPart";
_this addEventHandler [
    "HitPart",
    {
		(_this select 0) params ["_target","_shooter","_bullet","_position","_velocity","_selection","_ammo","_direction","_radius","_surface","_direct"];
        if ((_target == _shooter) or (isNull _shooter)) exitWith {};
		_target allowDamage false;
		_partOfTheBody = _selection select 0;
if ((_target getVariable "IMS_CustomHealthDamage" <= 0) or (_partOfTheBody == "head")) exitWith {
_target removeAllEventHandlers "HitPart";
_target setDamage 1;
_unit = _target;
if ((WBK_IMSIsEnabledStaticDeaths)) exitWith {
if (((_unit worldToModel (_shooter modelToWorld [0, 0, 0])) select 1) > 0) then {
_rndAnim = selectRandom ["A_PlayerDeathAnim_1","A_PlayerDeathAnim_2","A_PlayerDeathAnim_3","A_PlayerDeathAnim_5","A_PlayerDeathAnim_7","A_PlayerDeathAnim_8","A_PlayerDeathAnim_9","A_PlayerDeathAnim_10","A_PlayerDeathAnim_11","A_PlayerDeathAnim_12","A_PlayerDeathAnim_13"];
[_unit, _rndAnim] remoteExec ["switchMove", 0];
if ((_rndAnim == "A_PlayerDeathAnim_3") or (_rndAnim == "A_PlayerDeathAnim_5")) exitWith {
[_unit, [-5 * (sin (getdir _unit )), -5 * (cos (getdir _unit)), 1.35]] remoteExec ["setvelocity", _unit];
};
}else{
[_unit, selectRandom ["A_PlayerDeathAnim_4","A_PlayerDeathAnim_6"]] remoteExec ["switchMove", 0];
[_unit, [5 * (sin (getdir _unit )), 5 * (cos (getdir _unit)), 1.35]] remoteExec ["setvelocity", _unit];
[_unit, "dobi_fall_2", 50, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf"; 
};
};
_rndAnim = selectRandom ["bayonet_death_1","bayonet_death_2","lightsaber_death_1","lightsaber_death_2","lightsaber_death_3","lightsaber_death_4","lightsaber_death_5","lightsaber_death_6","lightsaber_death_7","flamethrower_burning_6","flamethrower_burning_7","lightsaber_death_8","lightsaber_death_9","lightsaber_death_10","lightsaber_death_11","lightsaber_death_12","lightsaber_death_13","lightsaber_death_14","lightsaber_death_15","lightsaber_death_16","lightsaber_death_17","lightsaber_death_18","lightsaber_death_19","lightsaber_death_20","lightsaber_death_21"];
[_unit, _rndAnim] remoteExec ["switchMove", 0];
};
		
		
		_isExplosive = _ammo select 3;
		if (_isExplosive == 1) then {
		_var = _target getVariable "IMS_CustomHealthDamage";
	    _var = _var - 3;
	    _target setVariable ["IMS_CustomHealthDamage",_var, true];
        [_target, _shooter] spawn WBK_CreateMeleeHitAnim;
		}else{
		_var = _target getVariable "IMS_CustomHealthDamage";
	    _var = _var - 1;
	    _target setVariable ["IMS_CustomHealthDamage",_var, true];
        [_target, _shooter] spawn WBK_CreateMeleeHitAnim;
		};
	}
];
}] remoteExec ["spawn", [0,-2] select isDedicated,true];





[_unitWithSword, "melee_armed_runF"] remoteExec ["switchMove", 0, true];



_actFr = [{
    _array = _this select 0;
    _mutant = _array select 0;
	if ((lifeState _mutant == "INCAPACITATED") or (captive _mutant)) exitWith {_mutant allowDamage true;};
    _mutant action ["SwitchWeapon", _mutant, _mutant, 100]; 
	_mutant allowDamage false;
	_mutant disableAI "MINEDETECTION";
	_mutant disableAI "WEAPONAIM";
	_mutant disableAI "SUPPRESSION";
	_mutant disableAI "COVER";
	_mutant disableAI "AIMINGERROR";
	_mutant disableAI "TARGET";
	_mutant disableAI "AUTOCOMBAT";
	_mutant disableAI "FSM";
	_mutant setBehaviour "CARELESS";  
	{ 
	 _ifInter = lineIntersects [ getPosASL _mutant, eyePos _x, _mutant, _x];
		if (!(_ifInter)) then {
			 _mutant reveal [_x, 4]; 
		};
	} forEach nearestObjects [_mutant, ["Man"], 40];  
	_myNearestEnemy = _mutant findNearestEnemy _mutant;
	
	if (_mutant getVariable "canMakeAttack" == 0) then {
	_prm = _mutant getVariable "concentrationParam"; 
	_newprm = _prm + 0.009; 
	if (_newprm >= 0.7) then { 
	_mutant setVariable ["concentrationParam",0.7, true]; 
	}else{ 
	_mutant setVariable ["concentrationParam",_newprm, true]; 
	};
	};
	
	
	
	
	if ((_mutant getVariable "canMakeAttack" == 0) and ((_myNearestEnemy distance _mutant) <= 4) and (alive _mutant)) then {
	
	if (!(animationState _mutant == "STAR_WARS_FIGHT_Alebarda_1") and (_myNearestEnemy getVariable "actualSwordBlock" == 1) and (hmd _myNearestEnemy in IMS_Sheilds) and (handGunWeapon _mutant in IMS_Melee_Alebard)) exitWith {
	if (_mutant getVariable "concentrationParam" > 0.08) then {
	[_mutant] spawn AlebardaSkvoz;
	};
	};

	if ((_myNearestEnemy getVariable "actualSwordBlock" == 1) and (hmd _myNearestEnemy in IMS_Sheilds) and ((_myNearestEnemy distance _mutant) <= 1.9)) exitWith {if (_mutant getVariable "concentrationParam" > 0.08) then {[_mutant] spawn legPunch;};};
	
    _rndLeg = random 100;
	if ((_myNearestEnemy getVariable "actualSwordBlock" == 1) and (_rndLeg >= 70)) exitWith {[_mutant] spawn legPunch;};
        [_mutant, 3] spawn IMS_MeleeFunction;
        [_mutant,handGunWeapon _mutant] spawn WBK_OB_Firing;
	};
}, 0.3, [_unitWithSword]] call CBA_fnc_addPerFrameHandler;

AlebardaSkvoz = {
_unitToPlay = _this select 0;
[_unitToPlay, [9, 9, 1.5], "starWars_force_landRoll"] remoteExec ["strafeFwrd", _unitToPlay, false];
sleep 0.5;
[_unitToPlay, 3] spawn IMS_MeleeFunction;
};



_loopPathfind = [{
    _array = _this select 0;
    _unit = _array select 0;
	if ((lifeState _unit == "INCAPACITATED") or (captive _unit)) exitWith {};
	_nearEnemy = _unit findNearestEnemy _unit; 
    if (!(isNull _nearEnemy) and (alive _nearEnemy) and (alive _unit)) then {
	_ifInter = lineIntersectsSurfaces [
		AGLToASL (_nearEnemy modelToWorld [0,0,0.9]), 
		AGLToASL (_unit modelToWorld [0,0,0.9]), 
		_unit,
		_nearEnemy,
		true,
		1,
		"GEOM",
		"NONE"
	];
      if (
      (_unit getVariable "AI_CanTurn" == 0) and 
      (isTouchingGround _unit) and
	  (count _ifInter == 0) and 
	  (_unit distance _nearEnemy < 15) and
	  ((getPosATL _nearEnemy select 2) < 1.45) and 
	  !(lifeState _unit == "INCAPACITATED")
      ) exitWith {
	    _unit disableAI "PATH";
	    _unit disableAI "ANIM";
		doStop _unit;
        [_unit, "melee_armed_runF"] spawn animPush;
        _dir = [[0,1,0], -([_unit, _nearEnemy] call BIS_fnc_dirTo)] call BIS_fnc_rotateVector2D;
        _unit setVelocityTransformation [ 
          getPosASL _unit,  
          getPosASL _unit,  
          [0,0,(velocity _unit select 2) - 1],  
          [(velocity _unit select 0),(velocity _unit select 1),(velocity _unit select 2) - 1], 
          vectorDir _unit,  
          _dir,  
          vectorUp _unit,  
          vectorUp _unit, 
          0.1
        ]; 
      };
	}; 
}, 0.01, [_unitWithSword]] call CBA_fnc_addPerFrameHandler;


_loopPathfindDoMove = [{
    _array = _this select 0;
    _unit = _array select 0;
	if ((lifeState _unit == "INCAPACITATED") or (captive _unit)) exitWith {};
	_nearEnemy = _unit findNearestEnemy _unit; 
    if (!(isNull _nearEnemy) and (alive _nearEnemy) and (alive _unit)) then {
	_ifInter = lineIntersectsSurfaces [
		AGLToASL (_nearEnemy modelToWorld [0,0,0.9]), 
		AGLToASL (_unit modelToWorld [0,0,0.9]), 
		_unit,
		_nearEnemy,
		true,
		1,
		"GEOM",
		"NONE"
	];
	 if ((_unit distance _nearEnemy > 15) or (!(count _ifInter == 0)) or ((getPosATL _nearEnemy select 2) >= 1.45)) exitWith {
	    _unit enableAI "ALL";
		_unit enableAI "PATH";
	    _unit enableAI "ANIM";
		_unit enableAI "MOVE";
		_unit enableAI "ANIM";
		_unit doMove [getPos _nearEnemy select 0, getPos _nearEnemy select 1, 0];
		_unit setVariable ["IMS_IsAnimPlayed",0];
		_unit setVariable ["canMakeAttack",0];
		_unit setVariable ["actualSwordBlock",0];
		if (!(gestureState _unit == "IMS_AiBandaging")) then {
		_unit playActionNow "Disable_Gesture";
		};
	 };
	}else{
	   if (!(alive _unit)) exitWith {_unit playActionNow "Disable_Gesture";};
	    _unit enableAI "ALL";
	    _unit enableAI "PATH";
	    _unit enableAI "ANIM";
		_unit enableAI "MOVE";
		_unit setVariable ["IMS_IsAnimPlayed",0];
		_unit setVariable ["canMakeAttack",0];
		_unit setVariable ["actualSwordBlock",0];
		if (!(gestureState _unit == "IMS_AiBandaging")) then {
		_unit playActionNow "Disable_Gesture";
		};
		if ((isNil {_unit getVariable "IMS_AI_HealedHimself"}) and ((damage _unit) >= 0.35) and (_unit getVariable "canMakeAttack" == 0)) then {
		_unit playActionNow "IMS_AiBandaging";
		_unit setDamage 0;
		_unit setVariable ["IMS_AI_HealedHimself",1];
		
_rndDead = [
"",
"announcekill_01",
"announcekill_02",
"announcekill_03",
"announcekill_04",
"announcekill_05",
"announcekill_06",
"announcekill_07",
"announcekill_08",
"announcekill_09",
"announcekill_10",
"announcekill_11"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
		
		
		};
	}; 
}, 1.2, [_unitWithSword]] call CBA_fnc_addPerFrameHandler;



waitUntil {sleep 0.5; !(alive _unitWithSword)};
[_actFr] call CBA_fnc_removePerFrameHandler;
[_loopPathfind] call CBA_fnc_removePerFrameHandler;
[_loopPathfindDoMove] call CBA_fnc_removePerFrameHandler;
[_unitWithSword, {
_this removeAllEventHandlers "HitPart";
}] remoteExec ["spawn", [0,-2] select isDedicated,true];

