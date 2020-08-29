$modelname "models/snowysnowtime/c_smg_fp.mdl"

$bodygroup "studio"
{
	studio "c_smg_fp.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/"

$attachment "muzzle" "frame gun" 7.5 0 3.45 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$include "bonemerge.qci"

$sectionframes 30 132

$sequence "idle" {
	"anims\smg_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "fire" {
	"anims\smg_fire1.smd"
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
	"anims\smg_deploy.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "hce.smgdeploy" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "reload" {
	"anims\smg_reloadfull.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "hce.smgreload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "reload2" {
	"anims\smg_reloadempty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\smg_melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.smgmelee" }
	fadein 0
	fadeout 0.2
	rotate -90
	fps 30
}
