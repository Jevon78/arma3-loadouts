
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
this addWeapon "arifle_MX_Black_F";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_Hamr";
this addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";
this addPrimaryWeaponItem "bipod_01_F_blk";
this addWeapon "launch_MRAWS_green_F";
this addSecondaryWeaponItem "MRAWS_HE_F";
this addWeapon "hgun_P07_F";
this addHandgunItem "30Rnd_9x21_Mag";

comment "Add containers";
this forceAddUniform "U_B_CTRG_2";
this addVest "V_TacVest_oli";
this addBackpack "B_Kitbag_rgr";

comment "Add binoculars";
this addWeapon "Rangefinder";

comment "Add items to containers";
this addItemToUniform "acc_flashlight";
this addItemToUniform "muzzle_snds_H";
for "_i" from 1 to 2 do {this addItemToUniform "FirstAidKit";};
this addItemToUniform "muzzle_snds_L";
for "_i" from 1 to 8 do {this addItemToVest "30Rnd_65x39_caseless_black_mag";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_9x21_Mag";};
for "_i" from 1 to 3 do {this addItemToBackpack "MRAWS_HE_F";};
this addHeadgear "H_HelmetB_light";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGogglesB_grn_F";

comment "Set identity";
[this,"WhiteHead_17","male02engb"] call BIS_fnc_setIdentity;
[this,"CTRG"] call BIS_fnc_setUnitInsignia;
