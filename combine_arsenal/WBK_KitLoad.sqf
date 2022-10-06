_object = _this select 0;
_type = _this select 1;

switch (_type) do
{
    case 1: {
[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Ordinal" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_Ordinal"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Ordinal" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_Ordinal" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_ORDINAL; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;


[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Grunt" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_Grunt"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Grunt" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_Grunt" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_Grunt; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;


[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Grunt_White" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_Grunt_White"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Grunt_White" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_Grunt_White" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_Grunt; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;

[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Walhammer" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_Walhammer"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_Walhammer" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_Walhammer" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_Wallhammer; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;

[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_APF" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_APF"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_APF" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_APF" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_APF; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;
};

case 2: {
[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_ASS_SMG" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_ASS_SMG"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_ASS_SMG" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_ASS_SMG" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_Assasin; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player; [player, 'WBK_CombineHead'] remoteExec ['setFace', 0, true];}
] spawn Wbk_AddKitFromUnitEquipment;

[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_ASS_Sniper" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_ASS_Sniper"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_ASS_Sniper" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_ASS_Sniper" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_Assasin; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player; [player, 'WBK_CombineHead'] remoteExec ['setFace', 0, true];}
] spawn Wbk_AddKitFromUnitEquipment;



[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_Elite" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_Elite"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_Elite" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_Elite" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_HL2ORDINAL; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;


[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_HL2_Type"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_HL2Combine; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;

[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_AR" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_AR"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_AR" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_AR" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_HL2Combine;player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;


[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_WastelandPatrol" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_WastelandPatrol"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_WastelandPatrol" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_HL2_Type_WastelandPatrol" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_HL2Combine;player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL'; removeGoggles player;}
] spawn Wbk_AddKitFromUnitEquipment;
};

case 3: {
[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_CP_SB" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_CP_SB"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_CP_SB" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_CP_SB" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_CivilProtection; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL';}
] spawn Wbk_AddKitFromUnitEquipment;

[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_CP_P" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_CP_P"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_CP_P" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_CP_P" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_CivilProtection; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL';}
] spawn Wbk_AddKitFromUnitEquipment;


[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_CP_SMG" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_CP_SMG"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_CP_SMG" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_CP_SMG" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_CivilProtection; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL';}
] spawn Wbk_AddKitFromUnitEquipment;
};

case 4: {
[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_MR_OFF" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_MR_OFF"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_MR_OFF" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_MR_OFF" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_MR1OFFICER; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL';}
] spawn Wbk_AddKitFromUnitEquipment;

[
_object,
getText (configfile >> "CfgVehicles" >> "WBK_Combine_MR_SLD" >> "displayName"),
(configFile >> "CfgVehicles" >> "WBK_Combine_MR_SLD"),
getText (configfile >> "CfgVehicles" >> "WBK_Combine_MR_SLD" >> "WBK_CombineType"),
getNumber (configfile >> "CfgVehicles" >> "WBK_Combine_MR_SLD" >> "WBK_CustomHPparam"),
{WBK_OB_KitDescriptionActual = OB_Description_Text_MR1soldier; player setVariable ['SFX_R_DisableDyingSounds',1,true]; player setSpeaker 'NoVoice';player disableAI 'RADIOPROTOCOL';}
] spawn Wbk_AddKitFromUnitEquipment;

};
};
