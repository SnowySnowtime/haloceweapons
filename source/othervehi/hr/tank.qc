$modelname "models/snowysnowtime/vehicles/haloreach/scorpion.mdl"
$include "tcollis.qci"

$bodygroup "studio"
{
	studio "scorpion_hulljic.smd"
}

$bodygroup "cannon"
{
	studio "scorpion_cannonjic.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/halo/vmt/hr/sc"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$attachment "hcenpc_tankseat1" "b_lb_tread_cover" 45.844 0 16.203 rotate 0 0 0
$attachment "hcenpc_tankseat2" "b_lf_tread_cover" -45.844 0 16.203 rotate 0 180 0
$attachment "hcenpc_tankseat3" "b_rb_tread_cover" -45.844 0 16.203 rotate 0 0 0
$attachment "hcenpc_tankseat4" "b_rf_tread_cover" -45.844 0 16.203 rotate 0 180 0
$attachment "muzzle" "primary_trigger1" 0 100 0 rotate 0 -90 0
$attachment "mgmuzzle" "primary_trigger" 0 -34.5 -8.5 rotate 0 90 0

$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "spin_cannon" -20 50 loop 0
$poseparameter "pass_yaw" -180 180 loop 360
$poseparameter "pass_pitch" -20 60 loop 0

$sequence "idle" {
	"tanim\t.smd"
	rotate -90
}

$animation neutral "tanim\t.smd" frames 0 0

$weightlist weights_turret {
turret2     1

}

$weightlist turret {
b_gun1     1

}

$weightlist pass {
anti_infantry_turret1   1

}

$weightlist passyaw {
b_gun     1

}

$animation "tower_0" "tanim\0.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
}

$animation "tower_90" "tanim\90.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
}

$animation "tower_180" "tanim\180.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
	loop
}

$animation "tower_270" "tanim\270.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
}

$animation "cannon_min" "tanim\min.smd" {
	fps 1
	weightlist "turret"
	loop
}

$animation "cannon_max" "tanim\max.smd" {
	fps 1
	weightlist "turret"
}

$animation "pass_0" "tanim\s0.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
}

$animation "pass_90" "tanim\s90.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
}

$animation "pass_180" "tanim\s180.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
	loop
}

$animation "pass_270" "tanim\s270.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
}

$animation "pass_min" "tanim\smin.smd" {
	fps 1
	loop
	weightlist "passyaw"
}

$animation "pass_max" "tanim\smax.smd" {
	fps 1
	weightlist "passyaw"
}

$sequence "turret_yaw" {
	"tower_180"
	"tower_270"
	"tower_0"
	"tower_90"
	"tower_180"
	autoplay
	blend "turret_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "spin_cannon" {
	"cannon_min"
	"cannon_max"
	autoplay
	blend "spin_cannon" -20 55
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "pass_yaw" {
	"pass_180"
	"pass_270"
	"pass_0"
	"pass_90"
	"pass_180"
	autoplay
	blend "pass_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "pass_pitch" {
	"pass_min"
	"pass_max"
	autoplay
	blend "pass_pitch" -20 60
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}