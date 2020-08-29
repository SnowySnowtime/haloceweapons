$modelname "models/snowysnowtime/c_fp_cerocket.mdl"

$bodygroup "anniv"
{
	studio "c_fp_rocket.smd"
	studio "c_cea_spnkr.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
	{ "rocket" }
	{ "rlcorrosion" }
	{ "rldesert" }
	{ "rlhuntersblood"    }
}

$attachment "muzzle" "frame tubes" 18 0 -1 rotate 0 0 0
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

$sequence "fire" {
	"anims\fire.smd"
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
	{ event 5004 0 "hce.rldeploy" }
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
	{ event 5004 0 "hce.rlreload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}
$sequence "reloadempty" {
	"anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "hce.rlreloaddry" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.rlmelee" }
	fadein 0.0
	fadeout 0.2
	rotate -90
	fps 30
}
