$modelname "snowysnowtime/eonace/c_hum_br55hb.mdl"

$bodygroup "br55hb"
{
	studio "c_hum_br55hb.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.204 -10.311 -5.993

$cdmaterials "snowysnowtime\2k\vmt\h3\br\"

$texturegroup "skinfamilies"
{
    { "base" "rubber" }
    { "camocool" "camocool_rubber" }
    { "fern" "fern_rubber" }
    { "hazard" "hazard_rubber" }
    { "spraypaint" "spraypaint_rubber" }
    { "color" "color_rubber" }
}

$attachment "muzzle" "gun" 24 0 5.1 rotate 0 0 0
$attachment "1" "gun" -7.8 -1.25 4.9 rotate 0 -90 90

$cbox 0 0 0 0 0 0

$bbox -17.064 -10.472 -12.862 33.453 12.601 2.846

$sequence "idle" {
	"c_hum_br55hb_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.1
	fadeout 0
	rotate -90
	fps 30
}

$sequence "fire1" {
	"c_hum_br55hb_anims\fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6001 0 "1" }
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "fire2" {
	"c_hum_br55hb_anims\fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6001 0 "1" }
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "fire3" {
	"c_hum_br55hb_anims\fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6001 0 "1" }
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "reload" {
	"c_hum_br55hb_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event AE_CL_PLAYSOUND 0 "h3.ma5c_reload" }
	fadein 0.3
	fadeout 0.3
	rotate -90
	fps 30
}

$sequence "draw" {
	"c_hum_br55hb_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 3 "h3.ma5c_ready" }
	fadein 0.3
	fadeout 0.3
	rotate -90
	fps 30
}

$sequence "melee1" {
	"c_hum_br55hb_anims\melee1.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event AE_CL_PLAYSOUND 0 "h3.ma5c_melee0" }
	fadein 0.1
	fadeout 0.3
	rotate -90
	fps 30
}

$sequence "melee2" {
	"c_hum_br55hb_anims\melee2.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event AE_CL_PLAYSOUND 0 "h3.ma5c_melee1" }
	fadein 0.1
	fadeout 0.3
	rotate -90
	fps 30
}

$sequence "pose1" {
	"c_hum_br55hb_anims\pose1.smd"
	activity "ACT_VM_FIDGET" 1
	{ event AE_CL_PLAYSOUND 0 "h3.ma5c_pose0" }
	fadein 0.3
	fadeout 0.3
	rotate -90
	fps 30
}

$sequence "pose2" {
	"c_hum_br55hb_anims\pose2.smd"
	activity "ACT_VM_FIDGET" 1
	{ event AE_CL_PLAYSOUND 0 "h3.ma5c_pose1" }
	fadein 0.3
	fadeout 0.3
	rotate -90
	fps 30
}
