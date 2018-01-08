// Teleports
fob_blue addAction ["To Airfield", "template\tpto_fob_blue_1.sqf"];
fob_blue_1 addAction ["To FOB Shifty", "template\tpto_fob_blue.sqf"];

//TFAR Options
TF_give_personal_radio_to_regular_soldier = true;
tf_no_auto_long_range_radio = true;

//ARES Additions
[] execVM "Ares additions\Ares_Reinforcement_Unit_Pools_RHS.sqf";
[] execVM "Ares additions\AresModuleAdditions.sqf";

// Saving disabled without autosave.
enableSaving [false, false];

waituntil {!isnil "bis_fnc_init"};

addMissionEventHandler ["HandleDisconnect",{deleteVehicle (_this select 0); false}];