
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
this addWeapon "arifle_SDAR_F";
this addPrimaryWeaponItem "20Rnd_556x45_UW_mag";
this addWeapon "hgun_P07_F";
this addHandgunItem "30Rnd_9x21_Mag";

comment "Add containers";
this forceAddUniform "U_B_Wetsuit";
this addVest "V_RebreatherB";
this addBackpack "B_AssaultPack_blk";

comment "Add binoculars";
this addWeapon "Rangefinder";

comment "Add items to containers";
this addItemToUniform "muzzle_snds_L";
for "_i" from 1 to 2 do {this addItemToUniform "FirstAidKit";};
this addItemToUniform "30Rnd_9x21_Mag";
for "_i" from 1 to 6 do {this addItemToUniform "20Rnd_556x45_UW_mag";};
this addItemToUniform "16Rnd_9x21_Mag";
this addItemToBackpack "MineDetector";
for "_i" from 1 to 4 do {this addItemToBackpack "DemoCharge_Remote_Mag";};
this addGoggles "G_B_Diving";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

comment "Set identity";
[this,"WhiteHead_17","male02engb"] call BIS_fnc_setIdentity;
[this,"CTRG"] call BIS_fnc_setUnitInsignia;
