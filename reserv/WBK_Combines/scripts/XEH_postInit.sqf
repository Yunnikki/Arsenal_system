if (!(hasInterface )) exitWith {};
[] spawn
{
	waitUntil { !isNull findDisplay 46 };
	OB_HUD_control = 2213451;
	OB_HUD_activeControls = [];
	[] spawn WBK_OB_Reload;
    enableEnvironment [false, true];
	
if (isMultiplayer) then {
canWindUp = true;
player addAction ["", {
}, "", 0, false, true, "DefaultAction", "isNil 'allowFire' && currentWeapon _target == 'HLA_APF_LMG'"];
if !(isNil {player getVariable "WBK_HL_CustomArmour"}) then {
player spawn {
while {(alive _this)} do {
sleep 0.1;
waitUntil {(_this getVariable "WBK_HL_CustomArmour" > 0)};
while {(_this getVariable "WBK_HL_CustomArmour" > 0)} do {
_this enableStamina false;
_this allowDamage false;
sleep 0.1;
};
_this enableStamina true;
_this allowDamage true;
sleep 0.5;
};
};
};
player addEventHandler ["Respawn", {  
_obj = _this select 0; 
canWindUp = true;
_obj addAction ["", {
}, "", 0, false, true, "DefaultAction", "isNil 'allowFire' && currentWeapon _target == 'HLA_APF_LMG'"];
if !(isNil {_obj getVariable "WBK_HL_CustomArmour"}) then {
_obj spawn {
while {(alive _this)} do {
sleep 0.1;
waitUntil {(_this getVariable "WBK_HL_CustomArmour" > 0)};
while {(_this getVariable "WBK_HL_CustomArmour" > 0)} do {
_this enableStamina false;
_this allowDamage false;
sleep 0.1;
};
_this enableStamina true;
_this allowDamage true;
sleep 0.5;
};
};
};
}]; 
}else{
canWindUp = true;
player addAction ["", {
}, "", 0, false, true, "DefaultAction", "isNil 'allowFire' && currentWeapon _target == 'HLA_APF_LMG'"];
if !(isNil {player getVariable "WBK_HL_CustomArmour"}) then {
player spawn {
while {(alive _this)} do {
sleep 0.1;
waitUntil {(_this getVariable "WBK_HL_CustomArmour" > 0)};
while {(_this getVariable "WBK_HL_CustomArmour" > 0)} do {
_this enableStamina false;
_this allowDamage false;
sleep 0.1;
};
_this enableStamina true;
_this allowDamage true;
sleep 0.5;
};
};
};
};
	
	
	(findDisplay 46) displayAddEventHandler ["MouseButtonDown", { 
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if (!(currentWeapon _unit == "HLA_APF_LMG") or (dialog) or (_this select 1 != 0) or !(canWindUp) or (weaponLowered player)) exitWith {};
if ((currentWeapon _unit == "HLA_APF_LMG") and (isNil {_unit getVariable "WBK_CombineType"})) exitWith {hint "Only APF can use this weapon";};
if !(_unit getVariable "WBK_CombineType" == " apf_") exitWith {hint "Only APF can use this weapon";};

canWindUp = false;
[_unit, "WBK_APF_Wind_In", 70, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";  
allowFire = true;
_unit spawn {
_unit = _this; 
_unit playActionNow "B1_GunHolding";
if (isNil {_unit getVariable "WBK_Metka"}) then {
[_unit] spawn {
_obj = _this select 0; 
_obj setVariable ["WBK_Metka",1];
sleep (5 + random 3);
_obj setVariable ["WBK_Metka",0];
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
[_unit, _rndDead, 100, false] call WBK_MakeVoiceOver_Combine;
};
sleep 1;
while {!(isNil 'allowFire') and ((_unit ammo primaryWeapon _unit) > 0) and (alive _unit) and !(lifeState _unit == "INCAPACITATED")} do {
_unit forceWeaponFire [weaponState _unit select 1, weaponState _unit select 2];  
_unit playMove "AmovPercMstpSrasWrflDnon";
sleep 0.015;
};
allowFire = nil;
sleep 0.2;
[_unit, "WBK_APF_Wind_Out", 70, 6] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";  
_unit playMoveNow "AmovPercMstpSrasWrflDnon";
canWindUp = true;
};
}];


(findDisplay 46) displayAddEventHandler ["MouseButtonUp", { 
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if (!(currentWeapon _unit == "HLA_APF_LMG") or (dialog) or (_this select 1 != 0) or (canWindUp)) exitWith {};
allowFire = nil;
}];




_isHudActive = ctrlShown ((findDisplay 46) displayCtrl 0281191);
if (_isHudActive) then {
ctrlDelete ((findDisplay 46) displayCtrl 0281191);
ctrlDelete ((findDisplay 46) displayCtrl 0281198);
ctrlDelete ((findDisplay 46) displayCtrl 0263218);
sleep 0.5;
};
WBK_ECHO_HelmetArray = ["Combaine_helmet_White","Combaine_helmet_White","HL_CMB_H_OW_E","CombainSolder","WBK_CP_HLA_Helm","CombainAssassin2","CombainAssassin","CombainOrdenal","Combaine_helmet","HLA_Headgear_CombineApf","HLA_Headgear_CombineCharger"];
disableSerialization;
_WBK_DT_SMHud = findDisplay 46 ctrlCreate ["RscStructuredText", 0281191];
_WBK_DT_SMHud ctrlSetPosition [(0 * safezoneW + safezoneX), safeZoneY + safeZoneH * 0.03, safeZoneW, safeZoneH * 0.06];
_WBK_DT_SMHud ctrlCommit 0;

_WBK_AdvancedArmour = findDisplay 46 ctrlCreate ["RscStructuredText", 0281198];
_WBK_AdvancedArmour ctrlSetPosition [(-0.4 * safezoneW + safezoneX), safeZoneY + safeZoneH * 0.87, safeZoneW, safeZoneH * 0.04]; 
_WBK_AdvancedArmour ctrlCommit 0;

_WBK_AdvancedArmourStimArmor = findDisplay 46 ctrlCreate ["RscStructuredText", 0263218];
_WBK_AdvancedArmourStimArmor ctrlSetPosition [(-0.399 * safezoneW + safezoneX), safeZoneY + safeZoneH * 0.85, safeZoneW, safeZoneH * 0.04];
_WBK_AdvancedArmourStimArmor ctrlCommit 0;

"RscCompass" cutRsc ["RscCompass","plain"]; 
_DT_HudSpawn = [{
    _array = _this select 0;
    _WBK_DT_SMHud = _array select 0;
	_WBK_AdvancedArmour = _array select 1;
	_WBK_AdvancedArmourStimArmor = _array select 2;
	_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
	if !(isNil {_unit getVariable "WBK_HL_CustomArmour"}) then {
	   if ((_unit getVariable "WBK_CombineType" == " guards_") or (_unit getVariable "WBK_CombineType" == " rebel_") or (_unit getVariable "WBK_CombineType" == " HECU_") or (_unit getVariable "WBK_CombineType" == " G_HECU_")) then {
	   _WBK_AdvancedArmourStimArmor ctrlSetStructuredText parseText format["<t color='#fcffee' align='center' size='1.1'>Bandages: %1, Plates: %2</t>",{_x == "WBK_Health_Bandage"} count items _unit,{_x == "WBK_Health_ArmourPlate"} count items _unit];
	   }else{
	   _WBK_AdvancedArmourStimArmor ctrlSetStructuredText parseText format["<t color='#fcffee' align='center' size='1.1'>Stims: %1, Batteries: %2</t>",{_x == "WBK_Health_Syringe"} count items _unit,{_x == "WBK_Health_Battery"} count items _unit];
	   };
	 _var1 = _unit getVariable "WBK_HL_CustomArmour";
		 if (_var1 < 25) then {
		 _WBK_AdvancedArmour ctrlSetStructuredText parseText format["<t color='#BE0000' align='center' size='1.9'>Armour: %1</t>",_unit getVariable "WBK_HL_CustomArmour"];
		 }else{
		 if (_var1 < 50) then {
		 _WBK_AdvancedArmour ctrlSetStructuredText parseText format["<t color='#FF9A29' align='center' size='1.9'>Armour: %1</t>",_unit getVariable "WBK_HL_CustomArmour"];
		 }else{
		_WBK_AdvancedArmour ctrlSetStructuredText parseText format["<t color='#fcffee' align='center' size='1.9'>Armour: %1</t>",_unit getVariable "WBK_HL_CustomArmour"];
		};
        };
	  }else{
	  _WBK_AdvancedArmourStimArmor ctrlSetStructuredText parseText "";
	   _WBK_AdvancedArmour ctrlSetStructuredText parseText "";
	  };
	if ((headgear _unit in WBK_ECHO_HelmetArray) and ((cameraView == "INTERNAL") or (cameraView == "GUNNER"))) then {
	_bearing = round (getDirVisual _unit);
    _WBK_DT_SMHud ctrlSetStructuredText parseText format["<t color='#fcffee' align='center' size='1.7'>%1</t>",_bearing];
_g = (_unit nearObjects ["GrenadeHand", 20]);
{ 
drawIcon3D ["\WBK_Combines\icons\Red_circle.paa",[1,0,0,0.9],getPosATL _x,1,1,0,"Grenade",0,0.04,"RobotoCondensed","center",true];   
} forEach _g;

if (!(isNil {_unit getVariable "WBK_ScanInProgress"})) then {
_peopleAround = nearestObjects [_unit, ["MAN","CAR","TANK","AIR"], 55];
{ 
if (!(_unit == _x) and !(side _x == side _unit) and (alive _x) and !(lifeState _x == "INCAPACITATED")) then { 
_distance = round (_unit distance _x);  
drawIcon3D ["\WBK_Combines\icons\red_target.paa",[0.8,0,0,0.9],ASLToAGL aimPos _x,1.2,1.2,0,str _distance + " M",0,0.04,"RobotoCondensed","center",true];  
};  
} forEach _peopleAround;
};

_peopleAroundFre = nearestObjects [_unit, ["MAN"], 25];
{ 
if (!(_unit == _x) and ((side _x == side _unit) or (side _x == civilian)) and (alive _x) and (_unit getVariable "WBK_CombineType" == " ordinal_")) then {
_distance = round (_unit distance _x);
_name = name _x;
if (_x in units group _unit) exitWith {};
if ((lifeState _x == "INCAPACITATED")) exitWith { 
drawIcon3D ["\WBK_Combines\icons\yellow_target.paa",[1,1,1,0.75],ASLToAGL aimPos _x,1.7,1.7,0,str _distance + " M " + _name,0,0.04,"RobotoCondensed","center",true];
};
drawIcon3D ["\WBK_Combines\icons\blue_target.paa",[1,1,1,0.75],ASLToAGL aimPos _x,1.7,1.7,0,str _distance + " M " + _name,0,0.04,"RobotoCondensed","center",true];    
};  
} forEach _peopleAroundFre;


_peopleAroundFre = units group _unit;
{ 
if (!(_unit == _x)) then { 
_distance = round (_unit distance _x);
_name = name _x;
if (!(alive _x)) exitWith {
drawIcon3D ["\a3\ui_f\data\IGUI\Cfg\Revive\overlayIcons\d100_ca.paa",[1,0.2,0,1],ASLToAGL aimPos _x,1.7,1.7,0,str _distance + " M " + _name,0,0.04,"RobotoCondensed","center",false];
};
if ((lifeState _x == "INCAPACITATED") or ((damage _x) >= 0.49)) exitWith {
drawIcon3D ["\WBK_Combines\icons\yellow_target.paa",[1,1,1,1],ASLToAGL aimPos _x,1.7,1.7,0,str _distance + " M " + _name,0,0.04,"RobotoCondensed","center",true];
};
if (_x == leader group _unit) then { 
drawIcon3D ["\WBK_Combines\icons\icon_ordinal.paa",[1,1,1,1],ASLToAGL aimPos _x,1.7,1.7,0,str _distance + " M " + _name,0,0.04,"RobotoCondensed","center",true];    
}else{
drawIcon3D ["\WBK_Combines\icons\green_target.paa",[1,1,1,1],ASLToAGL aimPos _x,1.7,1.7,0,str _distance + " M " + _name,0,0.04,"RobotoCondensed","center",true];    
};
};  
} forEach _peopleAroundFre;
	}else{
	    _WBK_DT_SMHud ctrlSetStructuredText parseText "";
	}; 
}, 0.001, [_WBK_DT_SMHud,_WBK_AdvancedArmour,_WBK_AdvancedArmourStimArmor]] call CBA_fnc_addPerFrameHandler;


["Our benefactors", "wbk_hl_Repair", ["Insert new battery/Repair your armour", "Repair your armor by inserting new battery."], {
    _climber = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
	if ((getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSdr') and (getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSpaceMarine')) exitWith {};
	if (isNil {_climber getVariable "WBK_HL_CustomArmour"}) exitWith {};
	_climber spawn WBK_HL_AdvancedArmour_Fix;
}, {},[2, [false, true, false]]] call cba_fnc_addKeybind;


 
["Our benefactors", "wbk_hl_Heal", ["Use medical item (Syringe,Bandages)", "Heal yourself using medical items."], {
    _climber = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
	if ((getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSdr') and (getText (configfile >> 'CfgVehicles' >> typeOf _climber >> 'moves') != 'CfgMovesMaleSpaceMarine')) exitWith {};
	_climber spawn WBK_HL_AdvancedArmour_Heal;
}, {},[3, [false, true, false]]] call cba_fnc_addKeybind;




["Our benefactors", "WBK_OrdinalScout", ["Mark targets for squad/Request marking targets", "Mark targets in your screen range for your squad"], {  
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if ((isNil {_unit getVariable "WBK_CombineType"}) or (lifeState _unit == "INCAPACITATED") or !(isTouchingGround _unit)) exitWith {};
if ((_unit getVariable "WBK_CombineType" == " rebel_") or (_unit getVariable "WBK_CombineType" == " G_HECU_") or (_unit getVariable "WBK_CombineType" == " COMBINE_") or (_unit getVariable "WBK_CombineType" == " HECU_")) exitWith {};
if ((_unit getVariable "WBK_CombineType" != " ordinal_") and (_unit getVariable "WBK_CombineType" != " assasin_")) exitWith {
if (
(_unit getVariable "WBK_CombineType" == " rebel_") or 
(_unit getVariable "WBK_CombineType" == " HECU_") or
(_unit getVariable "WBK_CombineType" == " G_HECU_")
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
 
 

["Our benefactors", "WBK_OrdinalAirwatchRequest", ["(Combines) Use class skill (If class have any)", "Use the skill that your combine class have"], {  
_unit = missionNamespace getVariable["bis_fnc_moduleRemoteControl_unit", player];
if ((isNil {_unit getVariable "WBK_CombineType"}) or (lifeState _unit == "INCAPACITATED") or (!(stance _unit == "STAND") and !(stance _unit == "CROUCH")) or !(isTouchingGround _unit)) exitWith {};
if ((_unit getVariable "WBK_CombineType" == " rebel_") or (_unit getVariable "WBK_CombineType" == " G_HECU_") or (_unit getVariable "WBK_CombineType" == " COMBINE_") or (_unit getVariable "WBK_CombineType" == " HECU_")) exitWith {};
if ((_unit getVariable "WBK_CombineType" != " ordinal_")) exitWith {
if (_unit getVariable "WBK_CombineType" == " charger_") exitWith {
_unit spawn WBK_WalhammerShield;
};
if (_unit getVariable "WBK_CombineType" == " assasin_") exitWith {
_unit spawn WBK_Assasin_Boost_UP_fnc;
};
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


uiSleep 2;
kickButt = {
_unit = _this select 0;
if (currentWeapon _unit in IMS_Melee_Weapons) exitWith {};
if (!(animationState _unit == "Star_Wars_KaaTirs_attack_execution_victim") and !(animationState _unit == "Star_Wars_KaaTirs_executionOnCreature_jedi") and !(stance _unit == "PRONE") and !(animationState _unit == "starWars_lightsaber_hit_1") and !(animationState _unit == "starWars_lightsaber_hit_2") and !(currentWeapon _unit == "") and !(currentMagazine _unit in lightSaberEnergy) and (alive _unit) and (_unit getVariable "canMakeAttack" == 0) and !(animationState _unit == "starWars_force_landRoll") and !(animationState _unit == "starWars_force_landRoll_b") and !(animationState _unit == "push_backwards")) then {
if (_unit getVariable "WBK_CombineType" == " assasin_") exitWith {
_unit spawn legPunchVertuha_Assasin;
};
if (_unit isKindOf "TIOWSpaceMarine_Base") exitWith {
_unit spawn SpaceMarine_Punch_WithRifle;
};
if (("WBK_KatarnCloneKnife" in items _unit) and (currentWeapon _unit == primaryWeapon _unit) and !(currentWeapon _unit == "")) exitWith {
_unit spawn Katarn_Punch;
};
_unit setVariable ["canMakeAttack",1, true]; 
_unit setVariable ["actualSwordBlock",0, true]; 
_IMS_playerTargetTrigger = createTrigger ["EmptyDetector", getPosATL _unit]; 
_IMS_playerTargetTrigger setTriggerArea [0.65, 6, 0, true]; 
_IMS_playerTargetTrigger attachTo [_unit, [0,1.2,0]];
[_unit, "Disable_Gesture"] remoteExec ["playActionNow", 0];
if (currentWeapon _unit == primaryWeapon _unit) then {
if (
(animationState _unit == "AmovPercMevaSlowWrflDfl") or 
(animationState _unit == "AmovPercMevaSlowWrflDfr") or 
(animationState _unit == "AmovPercMevaSlowWrflDf") or 
(animationState _unit == "AmovPercMevaSrasWrflDf") or 
(animationState _unit == "AmovPercMevaSrasWrflDfl") or 
(animationState _unit == "AmovPercMevaSrasWrflDfr") or 
(animationState _unit == "AadjPercMevaSrasWrflDf_down") or 
(animationState _unit == "AadjPercMevaSrasWrflDf_left") or 
(animationState _unit == "AadjPercMevaSrasWrflDf_right") or 
(animationState _unit == "AadjPercMevaSrasWrflDf_up") or 
(animationState _unit == "AadjPercMevaSrasWrflDfl_down") or 
(animationState _unit == "AadjPercMevaSrasWrflDfl_left") or 
(animationState _unit == "AadjPercMevaSrasWrflDfl_right") or 
(animationState _unit == "AadjPercMevaSrasWrflDfl_up") or 
(animationState _unit == "AadjPercMevaSrasWrflDfr_down") or 
(animationState _unit == "AadjPercMevaSrasWrflDfr_left") or 
(animationState _unit == "AadjPercMevaSrasWrflDfr_right") or 
(animationState _unit == "AadjPercMevaSrasWrflDfr_up")
) then {
[_unit, "IMS_ButtStock_onRun"] remoteExec ["switchMove", 0];
[_unit, "IMS_ButtStock_onRun"] remoteExec ["playMoveNow", 0];
}else{
[_unit, "IMS_ButtStock_1"] remoteExec ["switchMove", 0];
[_unit, "IMS_ButtStock_1"] remoteExec ["playMoveNow", 0];
};
}else{
if (currentWeapon _unit == handgunWeapon _unit) then {
[_unit, "IMS_ButtStock_Pistol"] remoteExec ["switchMove", 0];
[_unit, "IMS_ButtStock_Pistol"] remoteExec ["playMoveNow", 0];
};
};
sleep 0.2;
if (!(animationState _unit == "IMS_ButtStock_1") and !(animationState _unit == "IMS_ButtStock_onRun") and !(animationState _unit == "IMS_ButtStock_Pistol")) exitWith {deleteVehicle _IMS_playerTargetTrigger;};
_rndSnd = ["kick_butt_1","kick_butt_2","kick_butt_3"] call BIS_fnc_SelectRandom;
[_unit, _rndSnd, 50, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
if (animationState _unit == "IMS_ButtStock_onRun") then {
[_unit, [9 * (sin (getdir _unit )), 9 * (cos (getdir _unit)), 1.2]] remoteExec ["setvelocity", _unit];
}else{
[_unit, [5 * (sin (getdir _unit )), 5 * (cos (getdir _unit)), 1]] remoteExec ["setvelocity", _unit];
};
sleep 0.1;
if (!(animationState _unit == "IMS_ButtStock_1") and !(animationState _unit == "IMS_ButtStock_onRun") and !(animationState _unit == "IMS_ButtStock_Pistol")) exitWith {deleteVehicle _IMS_playerTargetTrigger;};
if (!(currentWeapon _unit == "") and !(currentMagazine _unit in lightSaberEnergy) and (alive _unit) and !(animationState _unit == "starWars_force_landRoll") and !(animationState _unit == "starWars_force_landRoll_b") and !(animationState _unit == "starWars_force_landRoll_b_weapon") and !(animationState _unit == "starWars_force_landRoll_weapon") and !(animationState _unit == "push_backwards") and !(animationState _unit == "starWars_lightsaber_hit_1") and !(animationState _unit == "starWars_lightsaber_hit_2") and !(animationState _unit == "starWars_lightsaber_hit_rifle_2") and !(animationState _unit == "starWars_lightsaber_hit_rifle_1") and !(animationState _unit == "starWars_lightsaber_hit_rifle_b")) then {

{ 
_inTrigger = [_IMS_playerTargetTrigger, _x] call BIS_fnc_inTrigger;
if ((_inTrigger) and (alive _x) and !(_x == _unit) and (isNil {_x getVariable "IMS_IsUnitInvicibleScripted"})) then {
_isBehindGeometry = lineIntersects [ eyePos _unit, eyePos _x, _unit, _x];
if (_isBehindGeometry) then {
}else{
_str1 = getText (configfile >> "CfgWeapons" >> uniform _x >> "ItemInfo" >> "uniformClass");
_str2 = getNumber (configfile >> "CfgVehicles" >> _str1 >> "HitPoints" >> "HitBody" >> "armor");
if ((_str2 > 6000) or (typeOf _x isKindOf "WBK_DT_1") or (typeOf _x isKindOf "WBK_DT_Cont_1") or (typeOf _x isKindOf "TIOWSpaceMarine_Base")) exitWith {
_rndSnd = selectRandom ["leg_hit1","leg_hit2","leg_hit3"];
[_unit, _rndSnd, 30, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_unit, "dobi_bones", 30, 5] execVM "\WebKnight_StarWars_Mechanic\createSoundGlobal.sqf";
[_unit, 228, _x] remoteExec ["concentrationToZero", _unit, false];  
};
[[_x, _unit], kickButtKill] remoteExec ["spawn", _x]; 
};
};
} forEach nearestObjects [getPosATL _unit, ["MAN"], 2.8];
};
sleep 0.8;
if (!(animationState _unit == "IMS_ButtStock_1") and !(animationState _unit == "IMS_ButtStock_onRun") and !(animationState _unit == "IMS_ButtStock_Pistol")) exitWith {deleteVehicle _IMS_playerTargetTrigger;};
_unit setVariable ["canMakeAttack",0, true];
_unit setVariable ["actualSwordBlock",0, true]; 
deleteVehicle _IMS_playerTargetTrigger;
};
};
};