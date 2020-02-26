
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
this addPrimaryWeaponItem "acc_flashlight";
this addPrimaryWeaponItem "optic_Aco_smg";
this addPrimaryWeaponItem "30Rnd_65x39_caseless_black_mag";

comment "Add containers";
this forceAddUniform "U_B_HeliPilotCoveralls";
this addVest "V_TacVest_blk";

comment "Add binoculars";
this addWeapon "Binocular";

comment "Add items to containers";
this addItemToUniform "acc_pointer_IR";
this addItemToUniform "muzzle_snds_H";
for "_i" from 1 to 8 do {this addItemToVest "30Rnd_65x39_caseless_black_mag";};
this addHeadgear "H_CrewHelmetHeli_B";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles_OPFOR";

comment "Set identity";
[this,"WhiteHead_17","male02engb"] call BIS_fnc_setIdentity;
[this,"CTRG"] call BIS_fnc_setUnitInsignia;
