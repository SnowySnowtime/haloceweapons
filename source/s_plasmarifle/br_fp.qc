$modelname "models/snowysnowtime/c_fp_pr.mdl"

$bodygroup "studio"
{
	studio "c_pr.smd"
}

$include bonemerge.qci

$surfaceprop "default"

$texturegroup "skinfamilies"
{
	{ "ce_plasmarifle" }
	{ "brutal"  }
	{ "schism" }
	{ "ultra"    }
	{ "zealot"   }
}

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/2k/vmt/"

$attachment "muzzle" "frame gun" 20 0 5 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

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
	"anims\ready.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "hce.pr_deploy" }
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
	{ event 5004 0 "hce.pr_fire" }
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "hce.pr_melee" }
	fadein 0.0
	fadeout 0.2
	rotate -90
	fps 30
}
