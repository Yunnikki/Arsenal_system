_display = findDisplay 2000;
_listBox = _display displayCtrl 1732;
_listBox lbSetColor [0, [0,1,0,1]];
lbClear 1732;
Wbk_equipArray = WBK_GlobalKitBoxRn getVariable "WBK_ActualKits";
Wbk_equipArray_count = 0;
{
_VAR_nameOfLoadout = ((Wbk_equipArray select Wbk_equipArray_count) select 0);
_VAR_loadout = ((Wbk_equipArray select Wbk_equipArray_count) select 1);
_VAR_voiceType = ((Wbk_equipArray select Wbk_equipArray_count) select 2);
_VAR_armourvalues = ((Wbk_equipArray select Wbk_equipArray_count) select 3);
_VAR_Description = ((Wbk_equipArray select Wbk_equipArray_count) select 4);
_pic = "";
_index = _listBox lbAdd _VAR_nameOfLoadout;
_listBox lbSetPicture [_index, _pic];
_listBox lbSetData [_index, format ["[%1, '%2', '%3', %4, %5]", _VAR_loadout, _VAR_nameOfLoadout,_VAR_voiceType,_VAR_armourvalues,_VAR_Description]];
_listBox lbSetPictureColor [_index, [1, 1, 1, 1]];
Wbk_equipArray_count = Wbk_equipArray_count + 1;
} forEach Wbk_equipArray;

