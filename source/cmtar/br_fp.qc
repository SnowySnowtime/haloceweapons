$modelname "models/snowysnowtime/c_fp_cmtar.mdl"

$bodygroup "studio"
{
	studio "c_fp_cmtar.smd"
}

$bodygroup "tens"
{
	studio "0.smd"
	studio "1.smd"
	studio "2.smd"
	studio "3.smd"
	studio "4.smd"
	studio "5.smd"
	studio "6.smd"
	studio "7.smd"
	studio "8.smd"
	studio "9.smd"
}

$bodygroup "ones"
{
	studio "00.smd"
	studio "01.smd"
	studio "02.smd"
	studio "03.smd"
	studio "04.smd"
	studio "05.smd"
	studio "06.smd"
	studio "07.smd"
	studio "08.smd"
	studio "09.smd"
}

$mostlyopaque

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/ma5e/"

$attachment "muzzle" "frame gun" 25.70 0 5.00 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$include "bonemerge.qci"

$sectionframes 30 132

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "fidget" {
	"anims\fidget.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "fire1" {
	"anims\fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}

$sequence "fire2" {
	"anims\fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}
$sequence "fire3" {
	"anims\fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}

$sequence "draw" {
	"anims\deploy.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "hcust.ardeploy" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "hcust.arreload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hcust.armelee" }
	fadein 0.0
	fadeout 0.2
	rotate -90
	fps 30
}
