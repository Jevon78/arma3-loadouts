
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
this addWeapon "SMG_03C_TR_black";
this addPrimaryWeaponItem "acc_flashlight";
this addPrimaryWeaponItem "optic_Aco_smg";
this addPrimaryWeaponItem "50Rnd_570x28_SMG_03";

comment "Add containers";
this forceAddUniform "U_B_PilotCoveralls";

comment "Add binoculars";
this addMagazine "Laserbatteries";
this addWeapon "Laserdesignator_03";

comment "Add items to containers";
this addItemToUniform "acc_pointer_IR";
this addItemToUniform "muzzle_snds_570";
for "_i" from 1 to 3 do {this addItemToUniform "50Rnd_570x28_SMG_03";};
this addHeadgear "H_PilotHelmetFighter_B";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

comment "Set identity";
[this,"WhiteHead_17","male02engb"] call BIS_fnc_setIdentity;
[this,"CTRG"] call BIS_fnc_setUnitInsignia;
