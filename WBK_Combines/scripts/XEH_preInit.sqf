[
    "WBK_OB_ShowSubtSetting",
    "LIST",
    "Show custom subtitles?",
    "Our Benefactors",
    [[true, false], ["YES", "NO"], 0],
    1,
    {
        params ["_value"];
        WBK_OB_ShowcustomSubtitles = _value;
    }
] call CBA_fnc_addSetting;




WBK_OB_Firing = {
_obj = _this select 0;
if (!(local _obj)) exitWith {};
_weaponCheck = _this select 1;
if ((_weaponCheck == "Throw")) exitWith {
_rndDead = [
"",
"grenade_01",
"grenade_02",
"grenade_03",
"grenade_04"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_obj getVariable "WBK_CombineType" == " assasin_") exitWith {};


if (_obj getVariable "WBK_CombineType" == " guards_") exitWith {
if !(isNil {_obj getVariable "WBK_Metka"}) exitWith {};
_en = _obj findNearestEnemy _obj;
if ((isNull _en)) exitWith {};
if ((_en isKindOf "WBK_Zombine_HLA_1") or (_en isKindOf "WBK_ClassicZombie_HLA_1")) exitWith {
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",nil];
};
_rndDead = [
"",
"fire_zombie_01",
"fire_zombie_02",
"fire_zombie_03",
"fire_zombie_04"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "WBK_Headcrab_Normal") exitWith {
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",nil];
};
_rndDead = [
"",
"fire_headcrab_01",
"fire_headcrab_02",
"fire_headcrab_03"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "WBK_Bullsquid_1") exitWith {
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",nil];
};
_rndDead = [
"",
"fire_bullsquid_01",
"fire_bullsquid_02",
"fire_bullsquid_03",
"fire_bullsquid_04",
"fire_bullsquid_05",
"fire_bullsquid_06"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "WBK_HECU_Rifleman_1") exitWith {
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",nil];
};
_rndDead = [
"",
"fire_marine_01",
"fire_marine_02",
"fire_marine_03",
"fire_marine_04",
"fire_marine_05",
"fire_marine_06",
"fire_marine_07"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
};


if (_obj getVariable "WBK_CombineType" == " rebel_") exitWith {
if !(isNil {_obj getVariable "WBK_Metka"}) exitWith {};
_en = _obj findNearestEnemy _obj;
if ((isNil {_obj getVariable "WBK_canBeSpecificAbout"}) and !(isNull _en)) exitWith {
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
_obj setVariable ["WBK_canBeSpecificAbout",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",nil];
sleep (5 + random 15);
_obj setVariable ["WBK_canBeSpecificAbout",nil];
};
if ((_en isKindOf "WBK_Zombine_HLA_1") or (_en isKindOf "WBK_ClassicZombie_HLA_1")) exitWith {
_rndDead = [
"",
"fireAt_zombie_1",
"fireAt_zombie_2"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "WBK_Headcrab_Normal") exitWith {
_rndDead = [
"",
"fireAt_headcrab_1",
"fireAt_headcrab_2"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if ((_en isKindOf "WBK_Combine_CP_P") or (_en isKindOf "WBK_Combine_CP_SB") or (_en isKindOf "WBK_Combine_CP_SMG")) exitWith {
_rndDead = [
"",
"fireAt_CP_1",
"fireAt_CP_2",
"fireAt_CP_3",
"fireAt_CP_4"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "WBK_Combine_Ordinal") exitWith {
_rndDead = [
"",
"fireAt_combine_1",
"fireAt_combine_2",
"fireAt_combine_3",
"fireAt_combine_4"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "Heli") exitWith {
_rndDead = [
"",
"fireAt_heli"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (_en isKindOf "WBK_Strider_HL2") exitWith {
_rndDead = [
"",
"fireAt_strider"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
_rndDead = [
"",
"fireAt_generic_1",
"fireAt_generic_2",
"fireAt_generic_3",
"fireAt_generic_4",
"fireAt_generic_5",
"fireAt_generic_6",
"fireAt_generic_7",
"fireAt_generic_8",
"fireAt_generic_9"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
sleep (10 + random 3);
_obj setVariable ["WBK_Metka",nil];
};
_rndDead = [
"",
"fireAt_generic_1",
"fireAt_generic_2",
"fireAt_generic_3",
"fireAt_generic_4",
"fireAt_generic_5",
"fireAt_generic_6",
"fireAt_generic_7",
"fireAt_generic_8",
"fireAt_generic_9"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
if (currentWeapon _obj == "HLA_APF_LMG") then {
if !(isPlayer _obj) then {
_obj playActionNow "B1_GunHolding";
_obj setUnitPos "UP";
_obj setSkill 0.8;
};
[_obj, {
if (((player distance _this) <= 4) and !(player == _this)) then {
enableCamShake true;
addCamShake [3, 1, 25];
};
}] remoteExec ["spawn", 0];
};
if !(isNil {_obj getVariable "WBK_Metka"}) exitWith {};
_obj spawn {
_obj = _this;
_obj setVariable ["WBK_Metka",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",nil];
};
_rndDead = [
"",
"fire_01",
"fire_02",
"fire_03",
"fire_04",
"fire_05",
"fire_06",
"fire_07",
"fire_08",
"fire_09",
"fire_10",
"fire_11",
"fire_12",
"fire_13",
"fire_14"
];
[_obj, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};




WBK_OB_AdvancedArmour = {
(_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
if (!(alive _target) or (animationState _target == "flamethrower_burning_4") or (animationState _target == "flamethrower_tankExplodePre_2") or (animationState _target == "flamethrower_tankExplodePre_1")) exitWith {};
if (isNil {_target getVariable "WBK_HL_CustomArmour"}) exitWith {
if (isNil {_target getVariable "WBK_canPlayHitSound"}) then {
[_target, ["","pain_01","pain_02","pain_03","pain_04","pain_05","pain_06","pain_07","pain_08","pain_09","pain_10"], 70, true] call WBK_MakeVoiceOver_Combine;
_target spawn {
_this setVariable ["WBK_canPlayHitSound",1];
sleep (1.2 + random 3);
_this setVariable ["WBK_canPlayHitSound",nil];
};
};
};
_penemParam = _ammo select 0;
_firstHit = _selection select 0;
if (((_firstHit == "head") or (_firstHit == "spine3")) and ((backpack _target == "Combaine_backpack") or (backpack _target == "Combaine_backpack_white")) and (((_target worldToModel (_shooter modelToWorld [0, 0, 0])) select 1) < 0)) exitWith {
_target spawn {
[_this, {
_canObj = "Land_HelipadEmpty_F" createVehicleLocal position _this;
_canObj attachTo [_this, [-0.2,-0.2,0.3],"Spine3",true];
_fireEffect = "#particlesource" createVehicleLocal position _canObj;
_fireEffect setParticleCircle [0, [0, 0, 0]];
_fireEffect setParticleRandom [0, [0, 0, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_fireEffect setParticleParams [["\A3\data_f\cl_exp", 1, 0, 1], "", "Billboard", 1, 0.7, [0, 0, 0], [0, 0, 0.75], 5, 3, 7.9, 0.075, [0.1, 2, 4], [[1, 0.5, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _canObj];
_fireEffect setDropInterval 0.05;
_fireEffect attachTo [_canObj, [0,0,0]];
sleep 2.8;
deleteVehicle _canObj;
deleteVehicle _fireEffect;
}] remoteExec ["spawn", [0,-2] select isDedicated, false];
_mine = createMine ["APERSMineDispenser_Mine_F", [0,0,0], [], 0];
[_mine, true] remoteExec ["hideObject", 0, true];
[_this, selectRandom ["flamethrower_tankExplodePre_1","flamethrower_tankExplodePre_2","flamethrower_burning_4"]] remoteExec ["switchMove", 0];
[_this, "flamethrower_tank_bulletimpact", 150, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, "fuelTank_befexp_1", 150, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, ["","onfire_01","onfire_02","onfire_03","onfire_04","onfire_05","onfire_06","onfire_07","onfire_08"], 100, true] call WBK_MakeVoiceOver_Combine;
_this spawn {
{
if (!(_this == _x) and ((_x distance _this) <= 20)) then {
[_x, ["","nearPanic_1","nearPanic_2","nearPanic_3","nearPanic_4"], 100, false] call WBK_MakeVoiceOver_Combine;
};
sleep 0.35;
} forEach allPlayers;
};
sleep 2.8;
_mine attachTo [_this, [-0.2,-0.1,0.3],"Spine3"];
detach _mine;
_mine setDamage 1;
_this setDamage 1;
[_this, selectRandom ["A_PlayerDeathAnim_20","A_PlayerDeathAnim_4","IMS_Die_Spec_2","lightsaber_death_8"]] remoteExec ["switchMove", 0];
};
};
if ((currentWeapon _shooter == "HL_SniperAssasin") and !(isPlayer _target)) exitWith {
_target setDamage 1;
if (_firstHit == "head") exitWith {
[_target, selectRandom ["decapetadet_sound_1","decapetadet_sound_2"], 60, 4] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
removeGoggles _target;
[_target, selectRandom ["WBK_DosHead_FrontHole","WBK_DosHead_BackHole"]] remoteExec ["setFace", [0,-2] select isDedicated];
[_target, {
_object = _this;
if (!(WBK_Zombies_EnableHeadShotsParticles)) exitWith {};
_blood = "#particlesource" createVehicleLocal (getposATL _object);
_blood attachTo [_object,[0,0,0],"head"];
_blood setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name
		"",   //animation
		"billboard", //type
		0.1, 2, //period and lifecycle
		[0, 0, 0], //position

		[3 + random -6, 3 + random -6, 2], //movement vector
		5, 6, 0.4, 0.4, //rotation, weight, volume , rubbing
		[0.05, 1.4], //size transform
		[[0.5,0,0,0.6], [0.8,0,0,0.1], [0.1,0,0,0.03]],
		[0.00001],
		0.4,
		0.4,
		"",
		"",
		"",
		360, //angle
		false, //on surface
		0 //bounce on surface
	];
_blood setdropinterval 0.01;
_breath = "#particlesource" createVehicleLocal (getposATL _object);
_breath setParticleParams
	[
		["\a3\Data_f\ParticleEffects\Universal\meat_ca", 1, 0, 1], //shape name
		"", //anim name
		"spaceObject",
		0.5, 12, //timer period & life time
		[0, 0, 0], //pos
		[3 + random -3, 2 + random -2, random 3], //moveVel
		1,1.275,0.2,0, //rotation vel, weight, volume, rubbing
		[1.6,0], //size transform
		[[0.005,0,0,0.05], [0.006,0,0,0.06], [0.2,0,0,0]],
		[1000], //animationPhase (speed in config)
		1, //randomdirection period
		0.1, //random direction intensity
		"", //onTimer
		"", //before destroy
		"", //object
		0, //angle
		false, //on surface
		0.0 //bounce on surface
	];
_breath setParticleRandom [0.5, [0, 0, 0], [3.25, 0.25, 2.25], 1, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
_breath setDropInterval 0.01;
_breath attachTo [_object,[0,0,0.2], "head"];
sleep 0.15;
deleteVehicle _breath;
sleep 0.9;
deleteVehicle _blood;
}] remoteExec ["spawn", [0,-2] select isDedicated,false];
[_target, selectRandom ["A_PlayerDeathAnim_2","A_PlayerDeathAnim_3","A_PlayerDeathAnim_5","A_PlayerDeathAnim_10","A_PlayerDeathAnim_11","A_PlayerDeathAnim_17"]] remoteExec ["switchMove", 0];
};
[_target, selectRandom ["A_PlayerDeathAnim_1","A_PlayerDeathAnim_7","A_PlayerDeathAnim_8","A_PlayerDeathAnim_9","A_PlayerDeathAnim_19","A_PlayerDeathAnim_18"]] remoteExec ["switchMove", 0];
};
if (isNil {_target getVariable "WBK_canPlayHitSound"}) then {
[_target, ["","pain_01","pain_02","pain_03","pain_04","pain_05","pain_06","pain_07","pain_08","pain_09","pain_10"], 70, true] call WBK_MakeVoiceOver_Combine;
_target spawn {
_this setVariable ["WBK_canPlayHitSound",1];
sleep (1 + random 3);
_this setVariable ["WBK_canPlayHitSound",nil];
};
};
if !(isPlayer _target) then {
[_target,_shooter,_firstHit] spawn {
_objHit = _this select 0;
if ((animationState _objHit == "IMS_ButtStock_Evade_B") or (animationState _objHit == "IMS_ButtStock_Evade_L") or (animationState _objHit == "IMS_ButtStock_Evade_R") or (stance _objHit == "PRONE") or (_objHit getVariable "WBK_CombineType" == " apf_") or (_objHit getVariable "WBK_CombineType" == " charger_")) exitWith {};
_hitter = _this select 1;
if ((currentWeapon _objHit == primaryWeapon _objHit) and !(currentWeapon _objHit == "")) exitWith {
_whereIsHit = _this select 2;
if (((_whereIsHit == "head") or (_whereIsHit == "neck")) and (stance _objHit == "STAND")) exitWith {
doStop _objHit;
[_objHit, "Disable_Gesture"] remoteExec ["playActionNow", _objHit];
[_objHit, "starWars_lightsaber_hit_rifle_2"] remoteExec ["switchMove", 0];
[_objHit, "starWars_lightsaber_hit_rifle_2"] remoteExec ["playMoveNow", 0];
};
if ((animationState _objHit == "starWars_lightsaber_hit_rifle_1") or (animationState _objHit == "starWars_lightsaber_hit_rifle_2") or (animationState _objHit == "starWars_lightsaber_hit_rifle_b")) exitWith {};
if ((gestureState _objHit == "WBK_Humanoid_Hit_3") and (stance _objHit == "STAND")) exitWith {
doStop _objHit;
[_objHit, "Disable_Gesture"] remoteExec ["playActionNow", _objHit];
[_objHit, "starWars_lightsaber_hit_rifle_1"] remoteExec ["switchMove", 0];
[_objHit, "starWars_lightsaber_hit_rifle_1"] remoteExec ["playMoveNow", 0];
};
if (gestureState _objHit == "WBK_Humanoid_Hit_2") exitWith {
[_objHit, "WBK_Humanoid_Hit_3"] remoteExec ["playActionNow", _objHit];
};
if (gestureState _objHit == "WBK_Humanoid_Hit_1") exitWith {
[_objHit, "WBK_Humanoid_Hit_2"] remoteExec ["playActionNow", _objHit];
};
[_objHit, "WBK_Humanoid_Hit_1"] remoteExec ["playActionNow", _objHit];
};
if (gestureState _objHit == "WBK_ZombieHitGest_2") exitWith {
[_objHit, "WBK_ZombieHitGest_3"] remoteExec ["playActionNow", _objHit];
};
if (gestureState _objHit == "WBK_ZombieHitGest_1") exitWith {
[_objHit, "WBK_ZombieHitGest_2"] remoteExec ["playActionNow", _objHit];
};
[_objHit, "WBK_ZombieHitGest_1"] remoteExec ["playActionNow", _objHit];
};
};
if ((_target getVariable "WBK_HL_CustomArmour" <= 0) and ((getText (configfile >> "CfgWeapons" >> uniform _target >> "author")) == "HL2 Echo Team") and ("ace_medical_engine" in activatedAddons)) then {
[_target, 0.5, "body", "stab"] remoteExec ["ace_medical_fnc_addDamageToUnit", _target];
};
if ((_firstHit == "head") and (_target getVariable "WBK_CombineType" == " rebel_")) exitWith {
if ((headgear _target == "")) exitWith {
if !(isPlayer _target) exitWith {
_target setDamage 1;
[_target, selectRandom ["A_PlayerDeathAnim_2","A_PlayerDeathAnim_3","A_PlayerDeathAnim_5","A_PlayerDeathAnim_10","A_PlayerDeathAnim_11","A_PlayerDeathAnim_17"]] remoteExec ["switchMove", 0];
};
_target setVariable ["WBK_HL_CustomArmour",0,true];
};
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 70;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
if ((_target getVariable "WBK_CombineType" == " apf_") or (_target getVariable "WBK_CombineType" == " charger_")) exitWith {
if ((_firstHit == "head") and (_penemParam >= 8) and (_target getVariable "WBK_CombineType" == " charger_")) exitWith {
if (headgear _target == "HLA_Headgear_CombineCharger_d") exitWith {
[_target, {
_parca = "#particlesource" createVehicleLocal (getposATL _this);
_parca setParticleClass "ATMineExplosionParticles";
_parca setParticleParams
		[
			["\A3\data_f\ParticleEffects\Shard\shard3", 1, 0, 1], //shape name
			"", //animation name
			"SpaceObject", //type
			1, 2 + random 5, //timer period & life time
			[0, 0, 0], //position
			[3 + random -6, 3 + random -6,1 + random 6], //moveVeocity
			1 + random 4, 1, 0.1, 0, //rotation velocity, weight, volume, rubbing
			[0.4 + random 0.3], //size
			[[1,1,1,1]], //color
			[0.1], //animationPhase (animation speed in config)
			0.1, //randomdirection period
			0.05, //random direction intensity
			"", //onTimer
			"", //before destroy
			"", //object
			0, //angle
			false, //on surface
			0 //bounce on surface
		];
_parca setParticleRandom [0, [0, 0, 0], [0, 0, 1], 0, 0.1, [0, 0, 0, 0], 0, 0];
_parca setDropInterval 0.01;
_parca attachTo [_this,[0,-0.05,0.18],"head"];
_scantei_spark = "#particlesource" createVehicleLocal (getPosATL _this);
_scantei_spark setParticleCircle [0, [0, 0, 0]];
_scantei_spark setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
_scantei_spark setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1+(random 2), [0, 0,2], [0, 0, 0], 0, 20, 7.9, 0, [0.3,0.3,0.05], [[1,0.5,0,1],[1,0.2,0,1],[1,0.2,0,1]], [0.08], 1, 0, "", "", _this,0,false,0.3,[[255,102,0,1],[255,102,0,1],[255,102,0,1]]];
_scantei_spark setDropInterval 0.001;
_scantei_spark attachTo [_this,[0,0,0],"pilot"];
sleep 0.1;
deleteVehicle _parca;
deleteVehicle _scantei_spark;
}] remoteExec ["spawn", [0,-2] select isDedicated,false];
removeHeadgear _target;
[_target, "HLA_Headgear_CombineCharger_fd"] remoteExec ["addHeadgear", _target];
[_target, "Disable_Gesture"] remoteExec ["playActionNow", _target];
[_target, "starWars_lightsaber_hit_rifle_2"] remoteExec ["switchMove", 0];
[_target, "starWars_lightsaber_hit_rifle_2"] remoteExec ["playMoveNow", 0];
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 150;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
if (headgear _target == "HLA_Headgear_CombineCharger") exitWith {
[_target, {
_parca = "#particlesource" createVehicleLocal (getposATL _this);
_parca setParticleClass "ATMineExplosionParticles";
_parca setParticleParams
		[
			["\A3\data_f\ParticleEffects\Shard\shard3", 1, 0, 1], //shape name
			"", //animation name
			"SpaceObject", //type
			1, 2 + random 5, //timer period & life time
			[0, 0, 0], //position
			[3 + random -6, 3 + random -6,1 + random 6], //moveVeocity
			1 + random 4, 1, 0.1, 0, //rotation velocity, weight, volume, rubbing
			[0.4 + random 0.3], //size
			[[1,1,1,1]], //color
			[0.1], //animationPhase (animation speed in config)
			0.1, //randomdirection period
			0.05, //random direction intensity
			"", //onTimer
			"", //before destroy
			"", //object
			0, //angle
			false, //on surface
			0 //bounce on surface
		];
_parca setParticleRandom [0, [0, 0, 0], [0, 0, 1], 0, 0.1, [0, 0, 0, 0], 0, 0];
_parca setDropInterval 0.01;
_parca attachTo [_this,[0,-0.05,0.18],"head"];
_scantei_spark = "#particlesource" createVehicleLocal (getPosATL _this);
_scantei_spark setParticleCircle [0, [0, 0, 0]];
_scantei_spark setParticleRandom [1, [0.05, 0.05, 0.1], [5, 5, 3], 0, 0.0025, [0, 0, 0, 0], 0, 0];
_scantei_spark setParticleParams [["\A3\data_f\proxies\muzzle_flash\muzzle_flash_silencer.p3d", 1, 0, 1], "", "SpaceObject", 1, 1+(random 2), [0, 0,2], [0, 0, 0], 0, 20, 7.9, 0, [0.3,0.3,0.05], [[1,0.5,0,1],[1,0.2,0,1],[1,0.2,0,1]], [0.08], 1, 0, "", "", _this,0,false,0.3,[[255,102,0,1],[255,102,0,1],[255,102,0,1]]];
_scantei_spark setDropInterval 0.001;
_scantei_spark attachTo [_this,[0,0,0],"pilot"];
sleep 0.1;
deleteVehicle _parca;
deleteVehicle _scantei_spark;
}] remoteExec ["spawn", [0,-2] select isDedicated,false];
removeHeadgear _target;
[_target, "HLA_Headgear_CombineCharger_d"] remoteExec ["addHeadgear", _target];
[_target, "Disable_Gesture"] remoteExec ["playActionNow", _target];
[_target, "starWars_lightsaber_hit_rifle_2"] remoteExec ["switchMove", 0];
[_target, "starWars_lightsaber_hit_rifle_2"] remoteExec ["playMoveNow", 0];
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 100;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
};
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 8;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
if (currentWeapon _shooter == "HL_SniperAssasin") exitWith {
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 100;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
if (_penemParam >= 30) exitWith {
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 50;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
if (_penemParam >= 25) exitWith {
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 20;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
if (_penemParam >= 8) exitWith {
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 15;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};
_health = _target getVariable "WBK_HL_CustomArmour";
_health = _health - 10;
if (_health <= 0) exitWith {_target setVariable ["WBK_HL_CustomArmour",0,true];};
_target setVariable ["WBK_HL_CustomArmour",_health,true];
};





WBK_OB_deleteBlood = {
_veh = _this;
uisleep 500;
deleteVehicle _veh;
};


WBK_OB_Die = {
_zombie = _this select 0;
_killer = _this select 1;
if ((_killer isKindOf "WBK_HunterSynth_1") and !(_zombie == _killer)) then {
_zombie spawn {
_this setDamage 1;
_rndAnim = selectRandom ["hunter_Flechette_Death_1","hunter_Flechette_Death_2"];
[_this, _rndAnim] remoteExec ["switchMove", 0];
if (_rndAnim == "hunter_Flechette_Death_1") then {
uiSleep 0.25;
[_this, selectRandom ["WBK_flechette_preexplode1","WBK_flechette_preexplode2","WBK_flechette_preexplode3"], 135, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
uiSleep 1.35;
[_this, {
_object = _this;
_blood = "#particlesource" createVehicleLocal (getposATL _object);
_blood attachTo [_object,[0,0,0],"pelvis"];
_blood setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name
		"",   //animation
		"billboard", //type
		0.1, 2, //period and lifecycle
		[0, 0, 0], //position

		[3 + random -6, 3 + random -6, 2], //movement vector
		5, 6, 0.4, 0.4, //rotation, weight, volume , rubbing
		[0.05, 1.4], //size transform
		[[0.5,0,0,0.6], [0.8,0,0,0.1], [0.1,0,0,0.03]],
		[0.00001],
		0.4,
		0.4,
		"",
		"",
		"",
		360, //angle
		false, //on surface
		0 //bounce on surface
	];
_blood setdropinterval 0.01;
sleep 1;
deleteVehicle _blood;
}] remoteExec ["spawn", [0,-2] select isDedicated,false];
[_this, selectRandom ["WBK_antlion_explode_1","WBK_antlion_explode_2","WBK_antlion_explode_3"], 125, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, selectRandom ["WBK_flechette_explode1","WBK_flechette_explode2","WBK_flechette_explode3"], 135, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
_electra2 = "#particlesource" createVehicle [0,0,0];
_electra2 setParticleClass "MineExplosionParticles";
_electra2 attachTo [_this, [0,0,0],"Spine3"];
uiSleep 0.1;
deleteVehicle _electra2;
}else{
[_this, selectRandom ["WBK_flechette_preexplode1","WBK_flechette_preexplode2","WBK_flechette_preexplode3"], 135, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
uiSleep 1.45;
[_this, selectRandom ["WBK_antlion_explode_1","WBK_antlion_explode_2","WBK_antlion_explode_3"], 125, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, selectRandom ["WBK_flechette_explode1","WBK_flechette_explode2","WBK_flechette_explode3"], 135, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, {
_object = _this;
_blood = "#particlesource" createVehicleLocal (getposATL _object);
_blood attachTo [_object,[0,0,0],"pelvis"];
_blood setParticleParams [
		["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 13, 1, 32],   //model name
		"",   //animation
		"billboard", //type
		0.1, 2, //period and lifecycle
		[0, 0, 0], //position

		[3 + random -6, 3 + random -6, 2], //movement vector
		5, 6, 0.4, 0.4, //rotation, weight, volume , rubbing
		[0.05, 1.4], //size transform
		[[0.5,0,0,0.6], [0.8,0,0,0.1], [0.1,0,0,0.03]],
		[0.00001],
		0.4,
		0.4,
		"",
		"",
		"",
		360, //angle
		false, //on surface
		0 //bounce on surface
	];
_blood setdropinterval 0.01;
sleep 1;
deleteVehicle _blood;
}] remoteExec ["spawn", [0,-2] select isDedicated,false];
_electra2 = "#particlesource" createVehicle [0,0,0];
_electra2 setParticleClass "MineExplosionParticles";
_electra2 attachTo [_this, [0,0,0],"Spine3"];
uiSleep 0.1;
deleteVehicle _electra2;
};
};
};
[_zombie, ["","die_01","die_02","die_03","die_04","die_05","die_06","die_07","die_08","die_09","die_10"], 105, true] call WBK_MakeVoiceOver_Combine;
_zombie spawn {
_rndBlood = selectRandom ["BloodSplatter_01_Medium_New_F","BloodPool_01_Medium_New_F"];
_deathBlood = _rndBlood createVehicle [0,0,0];
sleep 4;
_ins = lineIntersectsSurfaces [
		eyePos _this,
		[eyePos _this select 0, eyePos _this select 1,0],
		_this,
		objNull,
		true,
		1,
		"GEOM",
		"NONE"
	];
_deathBlood setPosASL (_ins select 0 select 0);
_deathBlood setVectorUp (_ins select 0 select 1);
_deathBlood spawn WBK_OB_deleteBlood;
};
if (!(_zombie == _killer) and !(isNull _killer)) exitWith {
_zombie spawn {
sleep (0.8 + random 0.4);
if !(isNil {_this getVariable "WBK_CombineType"}) then {
_this spawn WBK_OB_FriendlyDown_Combine;
};
};
if !(side _killer == _zombie getVariable "WBK_OB_UnitSide") then {
_killer spawn {
sleep (0.3 + random 0.4);
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
[_this, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
};
};
};







WBK_OB_FriendlyDown_Combine = {
_pos = _this;
_orushiiUnit = _pos;
if ({(side _x == _pos getVariable "WBK_OB_UnitSide") and !(lifeState _x == "INCAPACITATED") and !(_pos == _x)} count nearestObjects [_pos,["Man"],40] > 0) then {
{
if ((side _x == _pos getVariable "WBK_OB_UnitSide") and !(lifeState _x == "INCAPACITATED") and !(_pos == _x)) then {
_orushiiUnit = _x;
};
} forEach nearestObjects [_pos,["Man"],40];
_rndDead = [
"",
"squadmemberlost_01",
"squadmemberlost_02",
"squadmemberlost_03",
"squadmemberlost_04",
"squadmemberlost_05",
"squadmemberlost_06",
"squadmemberlost_07",
"squadmemberlost_08",
"squadmemberlost_09",
"squadmemberlost_10",
"squadmemberlost_11"
];
[_orushiiUnit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
_text = getText (configFile >> "CfgVehicles" >> typeOf _orushiiUnit >> "WBK_BehaveLikeHuman");
if ((_text == "") or (isPlayer _orushiiUnit) or !(gestureState _orushiiUnit == "<none>")) exitWith {};
if (((_orushiiUnit worldToModel (_pos modelToWorld [0, 0, 0])) select 0) > 1) then {
_orushiiUnit playActionNow "WBK_Humanoid_FD_RIGHT";
}else{
_orushiiUnit playActionNow "WBK_Humanoid_FD_LEFT";
};
};
};



WBK_OB_Reload = {
waitUntil {inputAction "reloadMagazine" > 0};
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
_rndDead = [
"",
"reload_01",
"reload_02",
"reload_03",
"reload_04",
"reload_05",
"reload_06",
"reload_07",
"reload_08"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
sleep (3 + random 3);
[] spawn WBK_OB_Reload;
};

WBK_MakeVoiceOver_Combine = {
_unit = _this select 0;
if (isNil {_unit getVariable "WBK_CombineType"}) exitWith {};
_sounds = _this select 1;
_radius = _this select 2;
_forceIsDeath = _this select 3;
_type = _unit getVariable "WBK_CombineType";
_finnalArray = _sounds joinString _type splitString " ";
_rndSound = selectRandom _finnalArray;
if (_forceIsDeath) exitWith {
[_unit, _rndSound, _radius, 15] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
};
if ((_unit getVariable "WBK_CombineType" == " guards_") or (_unit getVariable "WBK_CombineType" == " rebel_") or (_unit getVariable "WBK_CombineType" == " G_HECU_") or (_unit getVariable "WBK_CombineType" == " HECU_")) then {
[_unit, _rndSound, _radius] call CBA_fnc_globalSay3d;
}else{
[_unit, selectRandom ["WBK_radio_on_1","WBK_radio_on_2"], 20] call CBA_fnc_globalSay3d;
[_unit, _rndSound, _radius] call CBA_fnc_globalSay3d;
[_unit, selectRandom ["WBK_radio_off_1","WBK_radio_off_2","WBK_radio_off_3"], 20] call CBA_fnc_globalSay3d;
};
{
if (isPlayer _x) then {
[[_unit, _rndSound],{
_unit = _this select 0;
_phrase = _this select 1;
if (_phrase find "preparing" >= 3) exitWith {
[OB_HUD_control,_unit, selectRandom ["Shield up","Raising wall","Preparing wall","Shield is deploying"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "Med" >= 3) exitWith {
[OB_HUD_control,_unit, selectRandom ["Requesting stim dose","Requesting stim","I need a stim dose"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "visual" >= 5) exitWith {
[OB_HUD_control,_unit, selectRandom ["Ordinal, requesting target location","Requesting new target","I need a new target"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "reload" >= 4) exitWith {
[OB_HUD_control,_unit, selectRandom ["I am empty, reloading","Reloading","Empty, reloading"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "squadmemberlost" >= 3) exitWith {
[OB_HUD_control,_unit, selectRandom ["Friendly is down","Outbreak, outbreak","Sector is not secured"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "fire" >= 4) exitWith {
[OB_HUD_control,_unit, selectRandom ["Suppresing","Attacking","Firing","Engaging","Suppressing hostile"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "grenade" >= 5) exitWith {
[OB_HUD_control,_unit, selectRandom ["Bouncer","Grenade out","Extractor away"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "kill" >= 4) exitWith {
[OB_HUD_control,_unit, selectRandom ["Minus one","Stay dead","Hostile is over","Enemy dead","Enemy down"]] spawn WBK_CreateDialog_Subtitles;
};
if (_phrase find "mark" >= 4) exitWith {
[OB_HUD_control,_unit, selectRandom ["Enemy here.","This is ordinal. Enemy spotted there.","Ordinal. We have loud contaminants.","Enemies there.","Overwatch, we have spikes."]] spawn WBK_CreateDialog_Subtitles;
};
}] remoteExec ["spawn",_x];
};
} forEach units group _unit;
};


WBK_CreateDialog_Subtitles = {
if !(WBK_OB_ShowcustomSubtitles) exitWith {};
disableSerialization;
{
	_ctrl = (findDisplay 46) displayCtrl _x;
	_pos = ctrlPosition _ctrl;
	_pos set [1, (_pos select 1) + 0.04];
	_ctrl ctrlSetPosition _pos;
	_ctrl ctrlCommit 0.25;
}forEach OB_HUD_activeControls;
UISleep 0.25;
OB_HUD_activeControls pushBack (_this select 0);
OB_HUD_control = OB_HUD_control + 1;
_ctrl = (findDisplay 46) ctrlCreate ["RscStructuredText", _this select 0];
_ctrl ctrlSetPosition [0.09, 1, 0.85, 0.85];
if (typeName (_this select 1) == "STRING") then {
_ctrl ctrlSetStructuredText parseText format["<t color='#D60000' align='center' size='1.1' shadow='2'>Overwatch: %2</t>",(_this select 1),_this select 2];
}else{
if (((_this select 1) getVariable "WBK_CombineType" == " ordinal_") or ((_this select 1) getVariable "WBK_CombineType" == " cp_")) then {
_ctrl ctrlSetStructuredText parseText format["<t color='#FFE542' align='center' size='1.1' shadow='2'>%1: %2</t>",name (_this select 1),_this select 2];
}else{
if (((_this select 1) getVariable "WBK_CombineType" == " charger_")) then {
_ctrl ctrlSetStructuredText parseText format["<t color='#0078C3' align='center' size='1.1' shadow='2'>%1: %2</t>",name (_this select 1),_this select 2];
}else{
if (((_this select 1) getVariable "WBK_CombineType" == " apf_")) then {
_ctrl ctrlSetStructuredText parseText format["<t color='#ECE19C' align='center' size='1.1' shadow='2'>%1: %2</t>",name (_this select 1),_this select 2];
}else{
_ctrl ctrlSetStructuredText parseText format["<t color='#8AADC3' align='center' size='1.1' shadow='2'>%1: %2</t>",name (_this select 1),_this select 2];
};
};
};
};
_ctrl ctrlCommit 0;
_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 8;
0 = (_this select 0) spawn
{
	disableSerialization;
	_ctrl = (findDisplay 46) displayCtrl _this;
	UISleep 8;
	ctrlDelete _ctrl;
	OB_HUD_activeControls deleteAt (OB_HUD_activeControls find _this);
};
};




WBK_OrdinalReportAirwatch = {
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if ((!(backpack _unit == "SC_Backpack_WP_Guard_SL") and !(headgear _unit == "HL_CMB_H_OW_E")) or !(isNil "WBK_reconInProggress") or (gestureState _unit == "WBK_ordinal_radio")) exitWith {systemChat "You cannot request that now.";};
_unit playActionNow "WBK_ordinal_radio";
[_unit, "random_shhh", 30, 15] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 1;
if (!(gestureState _unit == "WBK_ordinal_radio")) exitWith {};
_veh = "#particlesource" createVehicle [getPosATL _unit select 0, getPosATL _unit select 1,(getPosATL _unit select 2) + 200];
[_veh, "WBK_heliDistance", 5000] call CBA_fnc_GlobalSay3d;
_veh spawn {Sleep 30; deleteVehicle _this;};
_rndDead = [
"",
"combat_idle_040",
"combat_idle_010",
"idle_07"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
[OB_HUD_control,_unit, selectRandom ["Overwatch we have active hostiles, advice for breaching.","Overwatch, requesting proximity data on hostiles."]] spawn WBK_CreateDialog_Subtitles;
sleep 3.5;
if (!(gestureState _unit == "WBK_ordinal_radio")) exitWith {};
[OB_HUD_control,"overwatch", "Begin scaning."] spawn WBK_CreateDialog_Subtitles;
playSound [selectRandom ["beginscanning100","inprogress"],true];
WBK_reconInProggress = 1;
[] spawn {
sleep 60;
WBK_reconInProggress = nil;
};
sleep 5;
if ({(alive _x)} count nearestObjects [_unit,["OmniDirectionalAntenna_01_black_F"],1000] > 0) exitWith {
[OB_HUD_control,"overwatch", "We are receving conflicting data."] spawn WBK_CreateDialog_Subtitles;
playSound ["recievingconflictingdata",true];
sleep 3;
[OB_HUD_control,"overwatch", "Respond."] spawn WBK_CreateDialog_Subtitles;
playSound ["respond",true];
sleep 3;
_rndDead = [
"",
"combat_idle_051",
"combat_idle_080",
"idle_14",
"idle_18"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
[OB_HUD_control,_unit, "All units be advised there is a jammer nearby."] spawn WBK_CreateDialog_Subtitles;
};
if ({((side _x == west) or (side _x == resistance)) and (alive _x) and !(_unit == _x)} count nearestObjects [_unit,["Man"],400] > 0) then {
[OB_HUD_control,"overwatch", "Airwatch copies possible misscount."] spawn WBK_CreateDialog_Subtitles;
playSound ["airwatchreportspossiblemiscount",true];
sleep 3;
[OB_HUD_control,"overwatch", "All units apply forward pressure."] spawn WBK_CreateDialog_Subtitles;
playSound ["allunitsapplyforwardpressure",true];
sleep 1.6;
_rndDead = [
"",
"combat_idle_051",
"combat_idle_080",
"idle_14",
"idle_18"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
[OB_HUD_control,_unit, "Copy, enemies nearby, updating visor."] spawn WBK_CreateDialog_Subtitles;
_unit setVariable ["WBK_ScanInProgress",1];
sleep 120;
_unit setVariable ["WBK_ScanInProgress",nil];
}else{
[OB_HUD_control,"overwatch", "Airwatch copies no activity in this area."] spawn WBK_CreateDialog_Subtitles;
playSound ["airwatchcopiesnoactivity",true];
sleep 3;
[OB_HUD_control,"overwatch", "All units - investigate and report."] spawn WBK_CreateDialog_Subtitles;
playSound ["investigateandreport",true];
sleep 1.6;
_rndDead = [
"",
"combat_idle_102",
"idle_03"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
[OB_HUD_control,_unit, "Copy, no enemies in this area. Continue searching."] spawn WBK_CreateDialog_Subtitles;
};
};



WBK_WalhammerShield = {
    if (!(isNil {_this getVariable "WalhammerShieldDestroyed"})) exitWith {
	systemChat "Shield is reloading";
	};
    if ((gestureState _this == "chargerAnim_Start") or (gestureState _this == "chargerAnim_Loop")) exitWith {_this playActionNow "chargerAnim_Out";};
     [_this, ["","preparing_shield_01","preparing_shield_02","preparing_shield_03","preparing_shield_04","preparing_shield_05","preparing_shield_06"], 100, false] call WBK_MakeVoiceOver_Combine;
	_this playActionNow "chargerAnim_Start";
 [_this, "shield_ready", 50, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";    uiSleep 0.65;
 if (!(gestureState _this == "chargerAnim_Start") or !(alive _this)) exitWith {};
 _this setVariable ['IMS_IsUnitInvicibleScripted',1,true];
 [_this, "shield_start", 10, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
 [_this, "shield_down", 40, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
 [_this, "shield_hit2", 50, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
 _this forceWalk true;
 _this playActionNow "chargerAnim_Loop";
    _personShield = "WBK_Combine_WalhammerShield_actual" createVehicle [0,0,0];
 _personShield attachTo [_this,[-0.1,-0.2,0.2],"leftHand",true];
 _y =90;
    _p = 335;
    _r  = 270;
    _personShield setVectorDirAndUp [
        [sin _y * cos _p, cos _y * cos _p, sin _p],
        [[sin _r, -sin _p, cos _r * cos _p], -_y] call BIS_fnc_rotateVector2D
    ];
    _personShield setVariable ["ShieldEnergy",100,true];
 _personShield setVariable ["ShieldParent",_this];
 [_personShield, {
    _unit = _this;
    _unit addEventHandler ["HitPart", {
 (_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
 _penemParam = _ammo select 0;
 [_target, selectRandom ["shield_hit2","shield_hit1"],100] call CBA_fnc_GlobalSay3d;
 if ((_penemParam < 8)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 2;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
 if ((_penemParam >= 8) or (_penemParam < 15)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 5;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
 if ((_penemParam >= 15) or (_penemParam < 30)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 10;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
 if ((_penemParam >= 30) or (_penemParam < 50)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 25;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
 if ((_penemParam >= 50) or (_penemParam < 70)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 35;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
 if ((_penemParam >= 70) or (_penemParam < 100)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 50;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
 if ((_penemParam >= 100)) exitWith {
 _health = _target getVariable "ShieldEnergy";
 _health = _health - 100;
 if (_health <= 0) exitWith {
 _enemy = _target getVariable "ShieldParent";
 [_enemy,_shooter] remoteExec ["WBK_CreateMeleeHitAnim", _enemy];
 _enemy setVariable ["WalhammerShieldDestroyed",1,true];
 _enemy spawn {sleep 120; _this setVariable ["WalhammerShieldDestroyed",nil,true];};
 deleteVehicle _target;
 };
 _target setVariable ["ShieldEnergy",_health,true];
 };
    }];
    }] remoteExec ["spawn", 0, true];
    _smlfirelight = "#lightpoint" createVehicleLocal (getpos _this);
 _smlfirelight setLightAmbient [0.2, 0, 1];
 _smlfirelight setLightColor [0.2, 0, 1];
 _smlfirelight setLightBrightness 0.3;
 _smlfirelight attachTo [_this,[0,0,0],"leftHand",true];
    _smlfirelight setLightDayLight true;
    _electra = "#particlesource" createVehicleLocal position _this;
    _electra attachTo [_this,[0,0,0],"leftHand",true];
    _electra setParticleCircle [0, [0, 0, 0]];
    _electra setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
    _electra setDropInterval 0.05;
    _electra setParticleParams [["A3\data_f\blesk1", 1, 0, 1],"", "spaceObject", 0.4, 0.1, [0,0,0], [0,0,0], 0,0.3,0.233,0, [0.005,0.005,0.01], [[1,1,1,0.5],[1,1,1,0.1]], [1], 0, 0, "", "", "",0,true];
 _basic_param = [[0,[0,0,0]],[0,[0,0,0],[0,0,0],0,0,[0,0,0,0],0,0]];
 _bule_smugg = "#particlesource" createVehicleLocal (getPosATL _smlfirelight);
 _bule_smugg setParticleCircle _basic_param # 0;
 _bule_smugg setParticleRandom [0.1,[1,1,1],[0,0,0],0,0.1,[0,0,0,0.1],1,0];
 _bule_smugg setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d",1,0,1],"","Billboard",1,2,[0,0,0],[0,0,0],17,10,7.9,0,[2,0.5,2],[[0,0,0,0.5],[0,0,0,1],[0,0,0,0]],[1],1,0,"","",_smlfirelight];
 _bule_smugg setDropInterval 0.01;
 _sp_dist_smug = "#particlesource" createVehicleLocal (getPosATL _smlfirelight);
 _sp_dist_smug setParticleCircle _basic_param # 0;
 _sp_dist_smug setParticleRandom _basic_param # 1;
 _sp_dist_smug setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d",1,0,1],"","Billboard",1,3,[0,0,0],[0,0,0],7,10,7.9,0,[3,0.1,3],[[1,1,1,1],[1,1,1,1],[1,1,1,1]],[1],0,0,"","",_smlfirelight];
 _sp_dist_smug setDropInterval 0.5;
 waitUntil {(isNull _personShield) or !(alive _this) or (!(gestureState _this == "chargerAnim_Start") and !(gestureState _this == "chargerAnim_Loop"))};
 _this setVariable ['IMS_IsUnitInvicibleScripted',nil,true];
 [_this, "shield_down", 50, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
 _this forceWalk false;
 {deleteVehicle _x;} forEach [_smlfirelight,_electra,_bule_smugg,_sp_dist_smug,_personShield];
};


["Our benefactors", "WBK_OrdinalAirwatchRequest", ["(Combines) Use class skill (If class have any)", "Use the skill that your combine class have"], {
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if ((lifeState _unit == "INCAPACITATED") or (!(stance _unit == "STAND") and !(stance _unit == "CROUCH")) or !(isTouchingGround _unit)) exitWith {};
if ((_unit getVariable "WBK_CombineType" != " ordinal_")) exitWith {
if (_unit getVariable "WBK_CombineType" == " charger_") exitWith {
_unit spawn WBK_WalhammerShield;
};
if (_unit getVariable "WBK_CombineType" == " assasin_") exitWith {
_unit spawn WBK_Assasin_Boost_UP_fnc;
};
if (
(_unit getVariable "WBK_CombineType" == " rebel_") or
(_unit getVariable "WBK_CombineType" == " HECU_") or
(_unit getVariable "WBK_CombineType" == " G_HECU_") or
(_unit getVariable "WBK_CombineType" == " guards_") or
(_unit getVariable "WBK_CombineType" == " cp_")
) exitWith {};
 _rndDead = [
"",
"lostvisual_01",
"lostvisual_02",
"lostvisual_03",
"lostvisual_04",
"lostvisual_05",
"lostvisual_06",
"lostvisual_012",
"lostvisual_08",
"lostvisual_09",
"lostvisual_10"
];
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
_unit spawn WBK_OrdinalReportAirwatch;
}, {}, [4, [false, true, false]]] call cba_fnc_addKeybind;



WBK_OrdinalScoutFunc = {
if (!(isNil "WBK_CanMarkSmth")) exitWith {};
_visibleEnemyUnits = [];
_unitsWest = units blufor + units resistance;
{
_dist = (positionCameraToWorld [0,0,0] distance _x);
if ((alive _x) and (((positionCameraToWorld [0,0,_dist] distance _x)/_dist) < 0.08) and ((_x distance _this) < 600)) then {
if (((_this worldToModel (_x modelToWorld [0, 0, 0])) select 1) < 0) then
{}else{
_visibleEnemyUnits pushBack _x;
};
};
} forEach _unitsWest;
if (count _visibleEnemyUnits > 0) exitWith {
_en = _visibleEnemyUnits select 0;
if (!(isNil {_en getVariable "WBK_IsTargetMarked"})) exitWith {};
WBK_CanMarkSmth = true;
[] spawn {
sleep 5;
WBK_CanMarkSmth = nil;
};
if (!(isNil {_en getVariable "WBK_AI_ISZombie"})) exitWith {
{
[[_en, player], {
_target = _this select 0;
_name = _this select 1;
if ((isNull _target)) exitWith {};
_target setVariable ["WBK_IsTargetMarked",1];
 _noticeIcon = [{
    _array = _this select 0;
    _unit = _array select 0;
	if (!(alive _unit)) exitWith {};
    _pos = _array select 1;
    _name = _array select 2;
	_actName = name _name;
	if ((_unit isKindOF "WBK_AntlionGuardian_1") or (_unit isKindOF "WBK_Antlion_1") or (_unit isKindOF "WBK_Bullsquid_1") or (_unit isKindOF "WBK_HoundEye_1")) exitWith {
	drawIcon3D ["\WBK_Combines\icons\icon_exogen.paa",[1,0,0,0.9],ASLToAGL aimPos _unit,2,2,0,"Exogen",0,0.04,"RobotoCondensed","center",true];
	};
	if (_unit isKindOF "WBK_Headcrab_Normal") exitWith {
	drawIcon3D ["\WBK_Combines\icons\icon_parasitic.paa",[1,0,0,0.9],ASLToAGL aimPos _unit,2,2,0,"Parasitic",0,0.04,"RobotoCondensed","center",true];
	};
	drawIcon3D ["\WBK_Combines\icons\icon_necrotic.paa",[1,1,1,1],ASLToAGL eyePos _unit,2,2,0,"Necrotic",0,0.04,"RobotoCondensed","center",true];
 }, 0.0001, [_target, getPosWorld _target, _name]] call CBA_fnc_addPerFrameHandler;
 sleep 30;
 [_noticeIcon] call CBA_fnc_removePerFrameHandler;
 _target setVariable ["WBK_IsTargetMarked",nil];
 }] remoteExec ["spawn", _x, true];
} forEach units group player;
 player playActionNow "GestureGo";
 _rndDead = [
"",
"markTarget_z_1",
"markTarget_z_2",
"markTarget_z_3",
"markTarget_z_4",
"markTarget_z_5",
"markTarget_z_6",
"markTarget_z_7",
"markTarget_z_8",
"markTarget_z_9",
"markTarget_z_10"
];
[player, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
{
[[_en, player], {
_target = _this select 0;
_name = _this select 1;
if ((isNull _target)) exitWith {};
_target setVariable ["WBK_IsTargetMarked",1];
 _noticeIcon = [{
    _array = _this select 0;
    _unit = _array select 0;
	if (!(alive _unit)) exitWith {};
    _pos = _array select 1;
    _name = _array select 2;
	_actName = name _name;
	drawIcon3D ["\WBK_Combines\icons\red_target2.paa",[1,0,0,0.9],ASLToAGL aimPos _unit,2,2,0,"Malignant",0,0.04,"RobotoCondensed","center",true];
 }, 0.0001, [_target, getPosWorld _target, _name]] call CBA_fnc_addPerFrameHandler;
 sleep 30;
 [_noticeIcon] call CBA_fnc_removePerFrameHandler;
 _target setVariable ["WBK_IsTargetMarked",nil];
 }] remoteExec ["spawn", _x, true];
} forEach units group player;
 player playActionNow "GestureGo";
 _rndDead = [
"",
"markTarget_n_1",
"markTarget_n_2",
"markTarget_n_3",
"markTarget_n_4",
"markTarget_n_5",
"markTarget_n_6",
"markTarget_n_7",
"markTarget_n_8",
"markTarget_n_9",
"markTarget_n_10",
"markTarget_n_11"
];
[player, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};

};



["Our benefactors", "WBK_OrdinalScout", ["Mark targets for squad/Request marking targets", "Mark targets in your screen range for your squad"], {
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if ((lifeState _unit == "INCAPACITATED") or !(isTouchingGround _unit)) exitWith {};
if ((_unit getVariable "WBK_CombineType" != " ordinal_") and (_unit getVariable "WBK_CombineType" != " assasin_")) exitWith {
if (
(_unit getVariable "WBK_CombineType" == " rebel_") or
(_unit getVariable "WBK_CombineType" == " HECU_") or
(_unit getVariable "WBK_CombineType" == " G_HECU_") or
(_unit getVariable "WBK_CombineType" == " guards_") or
(_unit getVariable "WBK_CombineType" == " cp_")
) exitWith {};
 _rndDead = [
"",
"lostvisual_01",
"lostvisual_02",
"lostvisual_03",
"lostvisual_04",
"lostvisual_05",
"lostvisual_06",
"lostvisual_07",
"lostvisual_08",
"lostvisual_09",
"lostvisual_10"
];
[player, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
_unit spawn WBK_OrdinalScoutFunc;
}, {}, [15, [false, false, false]]] call cba_fnc_addKeybind;






["Our benefactors", "wbk_hl_Heal", ["Use medical item (Syringe,Bandages)", "Heal yourself using medical items."], {
    _climber = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
	if ((getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSdr') and (getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSpaceMarine')) exitWith {};
	_climber spawn WBK_HL_AdvancedArmour_Heal;
}, {},[3, [false, true, false]]] call cba_fnc_addKeybind;



if ("ace_medical_engine" in activatedAddons) then {
WBK_OB_SetHeal = {
[_this] call ace_medical_treatment_fnc_fullHealLocal;
};
}else{
WBK_OB_SetHeal = {
_this setDamage 0;
};
};


WBK_HL_AdvancedArmour_Heal_Bandage = {
if (
(gestureState _this == "WBK_HL_BandageShot") or
!(alive _this) or
(lifeState _this == "INCAPACITATED")
) exitWith {};
if (stance _this == "PRONE") exitWith {systemChat "You cant heal yourself while prone";};
if (!("WBK_Health_Bandage" in items _this)) exitWith {
_rndDead = [
"",
"requestMed_01",
"requestMed_02",
"requestMed_05"
];
[_this, _rndDead, 120, false] call WBK_MakeVoiceOver_Combine;
};
_stim = "Land_Bandage_F" createVehicle [0,0,0];
_this playActionNow "WBK_HL_BandageShot";
[_this, "random_shhh", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.3;
if !(gestureState _this == "WBK_HL_BandageShot") exitWith {deleteVehicle _stim;};
_stim attachTo [player,[0.02,0.01,0.03],"LeftHand",true];
_y =-50;
 _p = 275;
 _r  = 270;
_stim setVectorDirAndUp [
        [sin _y * cos _p, cos _y * cos _p, sin _p],
        [[sin _r, -sin _p, cos _r * cos _p], -_y] call BIS_fnc_rotateVector2D
 ];
[_this, selectRandom ["melee_swing_equipment_3","melee_swing_equipment_4"], 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.5;
if !(gestureState _this == "WBK_HL_BandageShot") exitWith {deleteVehicle _stim;};
[_this, "WBK_bandage_use", 20, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 2.7;
if !(gestureState _this == "WBK_HL_BandageShot") exitWith {deleteVehicle _stim;};
_this removeitem "WBK_Health_Bandage";
_this call WBK_OB_SetHeal;
sleep 0.2;
if !(gestureState _this == "WBK_HL_BandageShot") exitWith {deleteVehicle _stim;};
deleteVehicle _stim;
[_this, selectRandom ["melee_whoosh_00","melee_whoosh_01","melee_whoosh_02"], 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
};




WBK_HL_AdvancedArmour_Heal = {
if (
(gestureState _this == "WBK_HL_HealShot") or
!(alive _this) or
(lifeState _this == "INCAPACITATED")
) exitWith {};
if (stance _this == "PRONE") exitWith {systemChat "You cant heal yourself while prone";};
if (!("WBK_Health_Syringe" in items _this)) exitWith {
if ("WBK_Health_Bandage" in items _this) exitWith {
_this spawn WBK_HL_AdvancedArmour_Heal_Bandage;
};
_rndDead = [
"",
"requestMed_01",
"requestMed_02",
"requestMed_05"
];
[_this, _rndDead, 120, false] call WBK_MakeVoiceOver_Combine;
};
_stim = "WBK_HealthSyringe" createVehicle [0,0,0];
_this playActionNow "WBK_HL_HealShot";
[_this, "random_shhh", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.3;
if !(gestureState _this == "WBK_HL_HealShot") exitWith {deleteVehicle _stim;};
_stim attachTo [_this,[0.02,-0.045,0.02],"LeftHand",true];
_stim setDir 180;
[_this, selectRandom ["melee_swing_equipment_3","melee_swing_equipment_4"], 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.5;
if !(gestureState _this == "WBK_HL_HealShot") exitWith {deleteVehicle _stim;};
_this removeitem "WBK_Health_Syringe";
[_this, "medkit_pickup", 6, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
_this call WBK_OB_SetHeal;
sleep 0.2;
if !(gestureState _this == "WBK_HL_HealShot") exitWith {deleteVehicle _stim;};
[_this, "PF_Hit_2", 6, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, ["","pain_01","pain_02","pain_03","pain_04","pain_05","pain_06","pain_07","pain_08","pain_09","pain_10"], 50, true] call WBK_MakeVoiceOver_Combine;
sleep 0.65;
if !(gestureState _this == "WBK_HL_HealShot") exitWith {deleteVehicle _stim;};
deleteVehicle _stim;
[_this, selectRandom ["melee_whoosh_00","melee_whoosh_01","melee_whoosh_02"], 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
};


["Our benefactors", "wbk_hl_Repair", ["Insert new battery/Repair your armour", "Repair your armor by inserting new battery."], {
    _climber = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
	if ((getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSdr') and (getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSpaceMarine')) exitWith {};
	if (isNil {_climber getVariable "WBK_HL_CustomArmour"}) exitWith {};
	_climber spawn WBK_HL_AdvancedArmour_Fix;
}, {},[2, [false, true, false]]] call cba_fnc_addKeybind;



WBK_HL_AdvancedArmour_Fix = {
if (
(gestureState _this == "WBK_HL_ArmorShot") or
!(alive _this) or
(lifeState _this == "INCAPACITATED") or
(isNil {_this getVariable "WBK_HL_CustomArmour"}) or
(isNil {_this getVariable "WBK_HL_CustomArmour_MAX"})
) exitWith {};
if (stance _this == "PRONE") exitWith {systemChat "You cannot change your battery while prone";};
if (!("WBK_Health_Battery" in items _this)) exitWith {
if ("WBK_Health_ArmourPlate" in items _this) exitWith {
_this spawn WBK_HL_AdvancedArmourPlate_Fix;
};
systemChat "No battery in inventory";
};
_stim = "WBK_BatteryItem" createVehicle [0,0,0];
_this playActionNow "WBK_HL_ArmorShot";
[_this, "random_shhh", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.3;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {deleteVehicle _stim;};
[_this, "WBK_armor_open", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.85;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {deleteVehicle _stim;};
_stim attachTo [player,[0.02,0.02,0.02],"LeftHand",true];
_y =90;
 _p = 335;
 _r  = 270;
 _stim setVectorDirAndUp [
        [sin _y * cos _p, cos _y * cos _p, sin _p],
        [[sin _r, -sin _p, cos _r * cos _p], -_y] call BIS_fnc_rotateVector2D
 ];
[_this, selectRandom ["melee_swing_equipment_2","melee_swing_equipment_1"], 6, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 1;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {deleteVehicle _stim;};
deleteVehicle _stim;
_this removeitem "WBK_Health_Battery";
[_this, "generic_out", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, "battery_pickup", 10, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_this, "shield_ready", 6, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
_maxVar = _this getVariable "WBK_HL_CustomArmour_MAX";
_this setVariable ["WBK_HL_CustomArmour",_maxVar,true];
sleep 0.43;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {};
[_this, "WBK_armor_close", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
};


WBK_HL_AdvancedArmourPlate_Fix = {
if (
(gestureState _this == "WBK_HL_ArmorShot") or
!(alive _this) or
(lifeState _this == "INCAPACITATED") or
(isNil {_this getVariable "WBK_HL_CustomArmour"}) or
(isNil {_this getVariable "WBK_HL_CustomArmour_MAX"})
) exitWith {};
if (stance _this == "PRONE") exitWith {systemChat "You cannot change your battery while prone";};
if (!("WBK_Health_ArmourPlate" in items _this)) exitWith {
systemChat "No Armour plate in inventory";
};
_this playActionNow "WBK_HL_ArmorShot";
[_this, "random_shhh", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.3;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {};
[_this, "WBK_armor_open", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 0.85;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {};
[_this, selectRandom ["melee_swing_equipment_2","melee_swing_equipment_1"], 6, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
sleep 1;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {};
_this removeitem "WBK_Health_ArmourPlate";
[_this, "generic_out", 20, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
_maxVar = _this getVariable "WBK_HL_CustomArmour_MAX";
_this setVariable ["WBK_HL_CustomArmour",_maxVar,true];
sleep 0.43;
if !(gestureState _this == "WBK_HL_ArmorShot") exitWith {};
[_this, "WBK_armor_close", 15, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
};



KK_fnc_inHouse = {
    lineIntersectsSurfaces [
        getPosWorld _this,
        getPosWorld _this vectorAdd [0, 0, 50],
        _this, objNull, true, 1, "GEOM", "NONE"
    ] select 0 params ["","","","_house"];
	if (isNil "_house") exitWith {false};
    if (_house isKindOf "House") exitWith {true};
    false
};


legPunchVertuha_Assasin = {
_unitToPlay = _this;
if (!(isTouchingGround _unitToPlay)) exitWith {};
_unitToPlay setVariable ["canMakeAttack",1];
_unitToPlay setVariable ["actualSwordBlock",0, true];
_unitToPlay setVariable ['IMS_IsUnitInvicibleScripted',1,true];
_rndSnd = ["leg_empty1","leg_empty2"] call BIS_fnc_SelectRandom;
[_unitToPlay, _rndSnd, 50, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_unitToPlay, "Disable_Gesture"] remoteExec ["playActionNow", _unitToPlay];
if ((currentWeapon _this == primaryWeapon _this) and !(currentWeapon _this == "")) then {
[_this,"Assasin_udar_Main"] remoteExec ['switchMove'];
_this playMove "AmovPercMstpSrasWrflDnon";
}else{
if ((currentWeapon _this == handGunWeapon _this) and !(currentWeapon _this == "")) then {
[_this,"Assasin_udar_Unarmed"] remoteExec ['switchMove'];
_this playMove "AmovPercMstpSrasWpstDnon";
}else{
[_this,"Assasin_udar_Unarmed"] remoteExec ['switchMove'];
_this playMove "AmovPercMstpSnonWnonDnon";
};
};
{
if ((alive _x) and !(isPlayer _x) and (handGunWeapon _x in IMS_LightSabers)) then {
if (((_x worldToModel (_unitToPlay modelToWorld [0, 0, 0])) select 1) < 0) then
{
[_x, [9, 9, 1.5], "starWars_force_landRoll"] spawn strafeFwrd;
}else{
[_x, [-9, -9, 1.5], "starWars_force_landRoll_b"] spawn strafeFwrd;
};
};
} forEach nearestObjects [_unitToPlay, ["Man"], 5];
sleep 0.2;
if (!(animationState _unitToPlay == "Assasin_udar_Main") and !(animationState _unitToPlay == "Assasin_udar_Unarmed")) exitWith {_unitToPlay setVariable ['IMS_IsUnitInvicibleScripted',nil,true];};
_unitToPlay setVariable ["AI_CanTurn",1, true];
sleep 0.3;
if (!(animationState _unitToPlay == "Assasin_udar_Main") and !(animationState _unitToPlay == "Assasin_udar_Unarmed")) exitWith {_unitToPlay setVariable ['IMS_IsUnitInvicibleScripted',nil,true];};
{
_isBehindGeometry = lineIntersects [ eyePos _unitToPlay, eyePos _x, _unitToPlay, _x];
if ((side _x != side _unitToPlay) and !(_isBehindGeometry) and (((_unitToPlay worldToModel (_x modelToWorld [0, 0, 0])) select 1) > 0) and (isNil {_x getVariable "IMS_IsUnitInvicibleScripted"}) and !(animationState _x == "STAR_WARS_FIGHT_DODGE_LEFT") and !(animationState _x == "STAR_WARS_FIGHT_DODGE_RIGHT") and (alive _x) and !(_x == _unitToPlay) and !(animationState _x == "Star_Wars_KaaTirs_idle") and !(animationState _x == "Star_Wars_KaaTirs_RunF") and (alive _unitToPlay) and (simulationEnabled _unitToPlay) and !(animationState _x == "starWars_force_landRoll") and !(animationState _x == "starWars_force_landRoll_b") and !(animationState _x == "Star_Wars_KaaTirs_dodge")) then {
_rndSnd = ["leg_hit1","leg_hit2","leg_hit3"] call BIS_fnc_SelectRandom;
[_unitToPlay, _rndSnd, 60, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
if (!(isNil {_x getVariable "WBK_AI_ISZombie"})) then {
[_x, _unitToPlay, 0.6, "WBK_survival_weapon_2"] remoteExec ["WBK_ZombiesProcessDamage", _x, false];
}else{
_rndAnim = ["A_PlayerDeathAnim_17","A_PlayerDeathAnim_11","A_PlayerDeathAnim_10","A_PlayerDeathAnim_2"] call BIS_fnc_SelectRandom;
[_x, _rndAnim] remoteExec ["switchMove", 0];
_x setDamage 1;
};
};
} forEach nearestObjects [getPosATL  _unitToPlay, ["MAN"], 2.7];
sleep 0.3;
if (!(animationState _unitToPlay == "Assasin_udar_Main") and !(animationState _unitToPlay == "Assasin_udar_Unarmed")) exitWith {_unitToPlay setVariable ['IMS_IsUnitInvicibleScripted',nil,true];};
_unitToPlay setVariable ["canMakeAttack",0];
_unitToPlay setVariable ["AI_CanTurn",0, true];
_unitToPlay setVariable ['IMS_IsUnitInvicibleScripted',nil,true];
};



WBK_Assasin_Boost_UP_fnc = {
_unit = _this;
if (_unit call KK_fnc_inHouse) exitWith {systemChat "No free space to make a jump";};
if (
(gestureState _unit == "Exo_Gest_Jump_Back") or
(gestureState _unit == "Exo_Gest_Jump_Left") or
(gestureState _unit == "Exo_Gest_Jump_Right") or
(gestureState _unit == "Exo_Gest_Jump_Front") or
(gestureState _unit == "Exo_Gest_Jump_Back_unarmed") or
(gestureState _unit == "Exo_Gest_Jump_Left_unarmed") or
(gestureState _unit == "Exo_Gest_Jump_Right_unarmed") or
(gestureState _unit == "Exo_Gest_Jump_Front_unarmed") or
!(alive _unit) or
!(_unit == vehicle _unit) or
(lifeState _unit == "INCAPACITATED") or
(stance _unit == "PRONE") or
!(_unit getVariable "WBK_CombineType" == " assasin_") or
!(isTouchingGround _unit) or
(isNull _unit) or
(animationState _unit == "MAINWEAPON_Vault_Fast") or
(animationState _unit == "PISTOL_Vault_Fast") or
(animationState _unit == "UNARMED_Vault_Fast") or
(animationState _unit == "MAINWEAPON_Vault_Slow") or
(animationState _unit == "PISTOL_Vault_Fast") or
(animationState _unit == "UNARMED_Vault_Slow") or
(animationState _unit == "MAINWEAPON_Vault_Little") or
(animationState _unit == "PISTOL_Vault_Little") or
(animationState _unit == "UNARMED_Vault_Little") or
(animationState _unit == "UNARMED_Vault_Middle") or
(animationState _unit == "PISTOL_Vault_Middle") or
(animationState _unit == "MAINWEAPON_Vault_Middle") or
(animationState _unit == "MAINWEAPON_Vault_Middle_OVER") or
(animationState _unit == "PISTOL_Vault_Middle_OVER") or
(animationState _unit == "UNARMED_Vault_Middle_OVER") or
(animationState _unit == "MAINWEAPON_Climb_ON") or
(animationState _unit == "UNARMED_Climb_ON") or
(animationState _unit == "MAINWEAPON_Climb_ON_OVER") or
(animationState _unit == "UNARMED_Climb_ON_OVER") or
(animationState _unit == "UNARMED_In_Air_Grab_MIDDLE") or
(animationState _unit == "UNARMED_In_Air_Grab_HIGH") or
(animationState _unit == "UNARMED_JUMP_Land_Roll") or
(animationState _unit == "MAINWEAPON_JUMP_Land_Roll") or
(animationState _unit == "PISTOL_JUMP_Land_Roll") or
(animationState _unit == "PISTOL_Slide") or
(animationState _unit == "MAINWEAPON_Slide") or
(animationState _unit == "Assasin_udar_Main") or
(animationState _unit == "Assasin_udar_Unarmed")
) exitWith {};
if ((currentWeapon _unit == primaryWeapon _unit) and !(currentWeapon _unit == "")) then {
[_this,"Assasin_Jump_MainWeap"] remoteExec ['switchMove'];
[_this,"Assasin_Jump_MainWeap"] remoteExec ['playMoveNow'];
_this playMove "AfalPercMstpSrasWrflDnon";
[_unit, [0,7,2]] remoteExec ["setVelocityModelSpace", _unit];
}else{
[_this,"Assasin_Jump_Unarmed"] remoteExec ['switchMove'];
[_this,"Assasin_Jump_Unarmed"] remoteExec ['playMoveNow'];
};
sleep 0.5;
if (!(animationState _unit == "Assasin_Jump_MainWeap") and !(animationState _unit == "Assasin_Jump_Unarmed")) exitWith {};
[_unit, selectRandom ["assasin_grenade_01","assasin_grenade_02","assasin_grenade_03","assasin_grenade_04"], 100] call CBA_fnc_GlobalSay3d;
[_unit, [0,7,9.6]] remoteExec ["setVelocityModelSpace", _unit];
[_this, "longfall_land_01", 35, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
_unit spawn {
_this setVariable ["canMakeAttack",1];
_this setVariable ["actualSwordBlock",0, true];
_this setVariable ['IMS_IsUnitInvicibleScripted',1,true];
_this setVariable ["WBK_forceShieldS",1];
_this allowDamage false;
sleep 0.35;
_this setVariable ["canMakeAttack",0];
_this setVariable ["actualSwordBlock",0, true];
_this setVariable ['IMS_IsUnitInvicibleScripted',nil,true];
waitUntil {!(alive _this) or (isTouchingGround _this)};
_this setVariable ["WBK_forceShieldS",nil];
[_this, selectRandom ["assasin_pain_01","assasin_pain_02","assasin_pain_03","assasin_pain_04","assasin_pain_05","assasin_pain_06","assasin_pain_07","assasin_pain_08","assasin_pain_09","assasin_pain_10"], 100] call CBA_fnc_GlobalSay3d;
[_this, selectRandom ["longfall_land_03","longfall_land_02"], 35, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
uiSleep 0.05;
if (
(isNull _this) or
(animationState _this == "MAINWEAPON_Vault_Fast") or
(animationState _this == "PISTOL_Vault_Fast") or
(animationState _this == "UNARMED_Vault_Fast") or
(animationState _this == "MAINWEAPON_Vault_Slow") or
(animationState _this == "PISTOL_Vault_Fast") or
(animationState _this == "UNARMED_Vault_Slow") or
(animationState _this == "MAINWEAPON_Vault_Little") or
(animationState _this == "PISTOL_Vault_Little") or
(animationState _this == "UNARMED_Vault_Little") or
(animationState _this == "UNARMED_Vault_Middle") or
(animationState _this == "PISTOL_Vault_Middle") or
(animationState _this == "MAINWEAPON_Vault_Middle") or
(animationState _this == "MAINWEAPON_Vault_Middle_OVER") or
(animationState _this == "PISTOL_Vault_Middle_OVER") or
(animationState _this == "UNARMED_Vault_Middle_OVER") or
(animationState _this == "MAINWEAPON_Climb_ON") or
(animationState _this == "UNARMED_Climb_ON") or
(animationState _this == "MAINWEAPON_Climb_ON_OVER") or
(animationState _this == "UNARMED_Climb_ON_OVER") or
(animationState _this == "UNARMED_In_Air_Grab_MIDDLE") or
(animationState _this == "UNARMED_In_Air_Grab_HIGH") or
(animationState _this == "UNARMED_JUMP_Land_Roll") or
(animationState _this == "MAINWEAPON_JUMP_Land_Roll") or
(animationState _this == "PISTOL_JUMP_Land_Roll") or
(animationState _this == "PISTOL_Slide") or
(animationState _this == "MAINWEAPON_Slide")
) exitWith {};
if ((currentWeapon _this == primaryWeapon _this) and !(currentWeapon _this == "")) then {
[_this,"AssasinLand_Heavy"] remoteExec ['switchMove'];
[_this,"AssasinLand_Heavy"] remoteExec ['playMoveNow'];
_this playMove "AmovPercMstpSrasWrflDnon";
}else{
if ((currentWeapon _this == handGunWeapon _this) and !(currentWeapon _this == "")) then {
[_this,"AssasinLand_Light_PIST"] remoteExec ['switchMove'];
[_this,"AssasinLand_Light_PIST"] remoteExec ['playMoveNow'];
_this playMove "AmovPercMstpSrasWpstDnon";
}else{
[_this,"AssasinLand_Light"] remoteExec ['switchMove'];
[_this,"AssasinLand_Light"] remoteExec ['playMoveNow'];
_this playMove "AmovPercMstpSnonWnonDnon";
};
};
_electra = "#particlesource" createVehicle position _this;
_electra setParticleClass "HDustVTOL1";
_electra attachto [_this,[0,0,2]];
detach _electra;
sleep 0.5;
deleteVehicle _electra;
};
};
