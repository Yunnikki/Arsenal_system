class CfgPatches
{
	class combussy_arsenal
	{
		units[]=
		{
			"combine_arsenal",
			"combine_arsenal_2",
			"combine_arsenal_3",
			"combine_arsenal_4",
			"combine_arsenal_5"
		};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]={};
	};
};
class WBK_RscListBox
{
	deletable=0;
	fade=0;
	access=0;
	type=5;
	rowHeight=0;
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.25};
	colorScrollbar[]={1,0,0,0};
	colorSelect[]={0,0,0,1};
	colorSelect2[]={0,0,0,1};
	colorSelectBackground[]={0.94999999,0.94999999,0.94999999,1};
	colorSelectBackground2[]={1,1,1,0.5};
	colorBackground[]={0,0,0,0.30000001};
	soundSelect[]=
	{
		"\A3\ui_f\data\sound\RscListbox\soundSelect",
		0.090000004,
		1
	};
	autoScrollSpeed=-1;
	autoScrollDelay=5;
	autoScrollRewind=0;
	arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
	arrowFull="#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[]={1,1,1,1};
	colorPictureSelected[]={1,1,1,1};
	colorPictureDisabled[]={1,1,1,0.25};
	colorPictureRight[]={1,1,1,1};
	colorPictureRightSelected[]={1,1,1,1};
	colorPictureRightDisabled[]={1,1,1,0.25};
	colorTextRight[]={1,1,1,1};
	colorSelectRight[]={0,0,0,1};
	colorSelect2Right[]={0,0,0,1};
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.64999998};
	class ListScrollBar
	{
		color[]={1,1,1,1};
		autoScrollEnabled=1;
	};
	x=0;
	y=0;
	w=0.30000001;
	h=0.30000001;
	style=16;
	font="TahomaB";
	sizeEx="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow=0;
	colorShadow[]={0,0,0,0.5};
	period=1.2;
	maxHistoryDelay=1;
};
class WBK_Box
{
	type=0;
	idc=-1;
	style=2;
	shadow=2;
	colorBackground[]={0,0,0,0.5};
	colorText[]={1,1,1,0.89999998};
	font="PuristaLight";
	sizeEx=0.029999999;
	text="";
};
class WBK_RscButton
{
	deletable=0;
	fade=0;
	access=0;
	type=1;
	text="";
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.25};
	colorBackground[]={0,0,0,0.5};
	colorBackgroundDisabled[]={0,0,0,0.5};
	colorBackgroundActive[]={0,0,0,1};
	colorFocused[]={0,0,0,1};
	colorShadow[]={0,0,0,0};
	colorBorder[]={0,0,0,1};
	soundEnter[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.090000004,
		1
	};
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.090000004,
		1
	};
	soundClick[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.090000004,
		1
	};
	soundEscape[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.090000004,
		1
	};
	idc=-1;
	style=2;
	x=0;
	y=0;
	w=0.095588997;
	h=0.039216001;
	shadow=2;
	font="RobotoCondensed";
	sizeEx="GUI_TEXT_SIZE_MEDIUM";
	url="";
	offsetX=0;
	offsetY=0;
	offsetPressedX=0;
	offsetPressedY=0;
	borderSize=0;
};
class OB_CombineArsenalAlike
{
	idd=2000;
	movingenable="false";
	onLoad="[] spawn {execVM '\combine_arsenal\WBK_Kit_System.sqf';};";
	class controls
	{
		class exit: WBK_RscButton
		{
			idc=1601;
			text="Exit";
			x="0.221562 * safezoneW + safezoneX";
			y="0.72 * safezoneH + safezoneY";
			w="0.144375 * safezoneW";
			h="0.055 * safezoneH";
			colorText[]={1,1,1,1};
			colorBackground[]={0,0,0,0.5};
			font="PuristaMedium";
			action="closeDialog 0;";
		};
		class RscListbox_1500: WBK_RscListBox
		{
			idc=1732;
			x="0.015313 * safezoneW + safezoneX";
			y="0.049 * safezoneH + safezoneY";
			w="0.195937 * safezoneW";
			h="0.781 * safezoneH";
			colorText[]={1,1,1,1};
			colorBackground[]={0,0,0,0.5};
			font="PuristaMedium";
			onLBSelChanged="_this call Wbk_AssignKit";
			onLBDblClick="_this call Wbk_AssignKit";
		};
		class km_description: WBK_RscListBox
		{
			idc=1526;
			x="0.221562 * safezoneW + safezoneX";
			y="0.236 * safezoneH + safezoneY";
			w="0.144375 * safezoneW";
			h="0.473 * safezoneH";
			colorText[]={1,1,1,1};
			colorBackground[]={0,0,0,0.5};
			font="PuristaMedium";
			onLBSelChanged="";
			onLBDblClick="";
		};
	};
};
class CfgEditorSubcategories
{
	class WBK_HLALYX_arsenal
	{
		displayName="Combine Arsenal";
	};
};
class CfgVehicles
{
	class CargoNet_01_box_F;
	class combine_arsenal: CargoNet_01_box_F
	{
		scope=2;
		scopeCurator=2;
		model="combine_arsenal\combineArsenal.p3d";
		displayName="Combine arsenal (No action)";
		editorCategory="WBK_HLALYX_Objects";
		editorSubcategory="WBK_HLALYX_arsenal";
		mapSize=20.27;
		destrType="DestructNo";
		accuracy=0.2;
		animated=0;
		armor=20000;
		cost=0;
	};
	class combine_arsenal_2: combine_arsenal
	{
		model="combine_arsenal\combineArsenal_2.p3d";
		displayName="Arsenal (Commandos)";
	};
	class combine_arsenal_3: combine_arsenal
	{
		model="combine_arsenal\combineArsenal_2.p3d";
		displayName="Combine arsenal (HL2)";
	};
	class combine_arsenal_4: combine_arsenal
	{
		model="combine_arsenal\combineArsenal_2.p3d";
		displayName="Combine arsenal (CP)";
	};
	class combine_arsenal_5: combine_arsenal
	{
		model="combine_arsenal\combineArsenal_2.p3d";
		displayName="Arsenal (1st Marauder)";
	};
};
class Extended_PreInit_EventHandlers
{
	class WBK_Project_HalfLife_ARSENAL_PreInit
	{
		init="call compile preprocessFileLineNumbers '\combine_arsenal\XEH_preInit.sqf'";
	};
};
class Extended_InitPost_EventHandlers
{
	class combine_arsenal_2
	{
		class OB_CombineArsenal_Type_HLA
		{
			init="_obj = _this select 0; [_obj, 1] execVM '\combine_arsenal\WBK_KitLoad.sqf'";
		};
	};
	class combine_arsenal_3
	{
		class OB_CombineArsenal_Type_HL2
		{
			init="_obj = _this select 0; [_obj, 2] execVM '\combine_arsenal\WBK_KitLoad.sqf'";
		};
	};
	class combine_arsenal_4
	{
		class OB_CombineArsenal_Type_HLCP
		{
			init="_obj = _this select 0; [_obj, 3] execVM '\combine_arsenal\WBK_KitLoad.sqf'";
		};
	};
	class combine_arsenal_5
	{
		class OB_CombineArsenal_Type_HLMR
		{
			init="_obj = _this select 0; [_obj, 4] execVM '\combine_arsenal\WBK_KitLoad.sqf'";
		};
	};
};
class cfgMods
{
	author="WebKnight";
	timepacked="1660065585";
};
