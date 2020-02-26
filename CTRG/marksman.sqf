
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
this addWeapon "srifle_EBR_F";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_Hamr";
this addPrimaryWeaponItem "20Rnd_762x51_Mag";
this addPrimaryWeaponItem "bipod_01_F_blk";
this addWeapon "hgun_P07_F";
this addHandgunItem "30Rnd_9x21_Mag";

comment "Add containers";
this forceAddUniform "U_B_CTRG_2";
this addVest "V_TacVest_oli";

comment "Add binoculars";
this addMagazine "Laserbatteries";
this addWeapon "Laserdesignator_03";

comment "Add items to containers";
this addItemToUniform "acc_flashlight";
for "_i" from 1 to 2 do {this addItemToUniform "FirstAidKit";};
this addItemToUniform "muzzle_snds_L";
this addItemToUniform "muzzle_snds_B";
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_9x21_Mag";};
for "_i" from 1 to 6 do {this addItemToVest "20Rnd_762x51_Mag";};
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
