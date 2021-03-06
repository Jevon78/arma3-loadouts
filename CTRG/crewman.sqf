
comment "Exported from Arsenal by JevonB";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "arifle_MXC_Black_F";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_Aco";
this addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";
this addWeapon "hgun_P07_F";
this addHandgunItem "30Rnd_9x21_Mag";

comment "Add containers";
this forceAddUniform "U_B_CTRG_2";
this addVest "V_TacVest_oli";

comment "Add binoculars";
this addWeapon "Rangefinder";

comment "Add items to containers";
this addItemToUniform "acc_flashlight";
this addItemToUniform "muzzle_snds_H";
for "_i" from 1 to 2 do {this addItemToUniform "FirstAidKit";};
this addItemToUniform "muzzle_snds_L";
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_9x21_Mag";};
for "_i" from 1 to 3 do {this addItemToVest "30Rnd_65x39_caseless_black_mag";};
this addHeadgear "H_HelmetCrew_B";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles_INDEP";

comment "Set identity";
[this,"WhiteHead_17","male02engb"] call BIS_fnc_setIdentity;
[this,"CTRG"] call BIS_fnc_setUnitInsignia;
