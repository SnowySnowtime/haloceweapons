$modelname "models/snowysnowtime/c_fp_cemagnum.mdl"

$bodygroup "studio"
{
	studio "c_fp_magnum.smd"
	studio "c_fp_ceamagnum.smd"
}

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
	{ "pistol" }
	{ "m6dblackcherry"  }
	{ "m6ddesert" }
	{ "m6dgold"    }
	{ "m6dhazard"   }
	{ "m6djourney"   }
	{ "m6dtoysoldier"   }
	{ "m6dwoodlands"   }
}

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$attachment "muzzle" "frame gun" 4 0 2.65  rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$origin 0 0 0 -90

$include "bonemerge.qci"

$sectionframes 30 132

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
	loop
}

$sequence "fidget" {
	"anims\fidget.smd"
	activity "ACT_VM_FIDGET" 1
	{ event 5004 0 "hce.m6fidget" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "2"
	snap
	fps 30
}

$sequence "draw" {
	"anims\deploy.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "hce.m6deploy" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "hce.m6reload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}
$sequence "reloadempty" {
	"anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "hce.m6reload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "melee" {
	"anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.m6melee" }
	fadein 0.0
	fadeout 0.2
	fps 30
}

$sequence "h_reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "hcea.m6reload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}
$sequence "h_reloadempty" {
	"anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "hcea.m6reload" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "h_melee" {
	"anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hcea.m6melee" }
	fadein 0.0
	fadeout 0.2
	fps 30
}