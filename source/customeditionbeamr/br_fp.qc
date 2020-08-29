$modelname "models/snowysnowtime/c_fp_beamrifle.mdl"

$bodygroup "studio"
{
	studio "c_fp_beamrifle.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$include "bonemerge.qci"

$cdmaterials "snowysnowtime/"

$attachment "muzzle" "frame gun" 16 4.5 0 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$sectionframes 30 132

$sequence "idle" {
	"anims\beamrifle_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "fidget" {
	"anims\beamrifle_fidget.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "fire2" {
	"anims\beamrifle_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 5004 0 "hce.beamfp" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}

$sequence "fire1" {
	"anims\beamrifle_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 5004 0 "hce.beamfp" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}

$sequence "fire3" {
	"anims\beamrifle_fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 5004 0 "hce.beamfp" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}

$sequence "draw" {
	"anims\beamrifle_deploy.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "hce.beamdeploy" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "reload" {
	"anims\beamrifle_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "hce.beamreload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\beamrifle_melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.beammelee" }
	fadein 0
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "melee1" {
	"anims\beamrifle_melee2.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.beammelee" }
	fadein 0
	fadeout 0.2
	rotate -90
	fps 30
}