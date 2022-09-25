class OB_CombineArsenalAlike
{
	idd=2000;
	movingenable=false;
	onLoad = "[] spawn {execVM '\combine_arsenal\WBK_Kit_System.sqf';};";
	
	class controls 
	{	
class exit: WBK_RscButton
{
	idc = 1601;
	text = "Exit"; //--- ToDo: Localize;
	x = 0.221562 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.055 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.5};
	font = "PuristaMedium";
	action = "closeDialog 0;";
};
class RscListbox_1500: WBK_RscListBox
{
	idc = 1732;
	x = 0.015313 * safezoneW + safezoneX;
	y = 0.049 * safezoneH + safezoneY;
	w = 0.195937 * safezoneW;
	h = 0.781 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.5};
	font = "PuristaMedium";
	onLBSelChanged = "_this call Wbk_AssignKit";
	onLBDblClick = "_this call Wbk_AssignKit";
};
class km_description: WBK_RscListBox
{
	idc = 1526;
	x = 0.221562 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.473 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.5};
	font = "PuristaMedium";
	onLBSelChanged = "";
	onLBDblClick = "";
};


////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	
	
};
};