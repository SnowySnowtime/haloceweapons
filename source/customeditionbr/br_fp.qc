$modelname "models/snowysnowtime/c_br_fp.mdl"

$bodygroup "studio"
{
	studio "c_br_fpscopeless.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/"

$attachment "muzzle" "frame gun" 16 0 4.6 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$texturegroup "skinfamilies"
{
	{ "br_diff" }
	{ "br_skin" }
}

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$include "bonemerge.qci"

$sectionframes 30 132

$sequence "idle" {
	"anims\br_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "fidget" {
	"anims\br_fidget.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "fire" {
	"anims\br_fire.smd"
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
	"anims\br_deploy.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "hce.brdeploy" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "reload" {
	"anims\br_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "hce.brreload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\br_melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.brmelee" }
	fadein 0.0
	fadeout 0.2
	rotate -90
	fps 30
}