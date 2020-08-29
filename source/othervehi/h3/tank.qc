$modelname "models/snowysnowtime/vehicles/halo3/scorpion.mdl"
$include "tcollis.qci"

$bodygroup "studio"
{
	studio "scorpion.smd"
}

$bodygroup "wheels"
{
	studio "treads_speedless.smd"
	studio "treads_speed.smd"
}

$texturegroup "skinfamilies"
{
	{ "scorpion_hull" "turret_cannon" "anti_infantry" }
	{ "snow_scorpion" "snow_cannon" "snow_ante" }
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/halo/vmt/h3"

$attachment "turret" "cannon" 0 0 0 rotate 0 0 0
$attachment "muzzle" "muzzle" 0 100 0 rotate 0 -90 0
$attachment "mgmuzzle" "primary_trigger1" 0 -34.5 -8.5 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$definebone "hull" "" 0 0 0 150.500025 0 0 0 0 0 0 -90 0
$definebone "anti_infantry_turret" "hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "rotation" "anti_infantry_turret" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "gun" "rotation" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "primary_trigger1" "gun" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "turret_rotator" "hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "turret" "turret_rotator" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "cannon" "turret" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "muzzle" "cannon" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "lb_tread_cover" "hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "lf_tread_cover" "hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "rb_tread_cover" "hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "rf_tread_cover" "hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "muzzle" "cannon" 0 0 0 0 0 0 0 0 0 0 0 0
$attachment "hcenpc_tankseat1" "lb_tread_cover" 45.844 0 16.203 rotate 0 0 0
$attachment "hcenpc_tankseat2" "lf_tread_cover" -45.844 0 16.203 rotate 0 180 0
$attachment "hcenpc_tankseat3" "rb_tread_cover" -45.844 0 16.203 rotate 0 0 0
$attachment "hcenpc_tankseat4" "rf_tread_cover" -45.844 0 16.203 rotate 0 180 0

$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "spin_cannon" -20 55 loop 0
$poseparameter "pass_yaw" -180 180 loop 360
$poseparameter "pass_pitch" -20 60 loop 0

$sequence "idle" {
	"tanims\t.smd"
	rotate -90
}

$animation neutral "tanims\t.smd" frames 0 0

$weightlist weights_turret {
turret_rotator     1

}

$weightlist turret {
turret     1

}

$weightlist pass {
rotation     1

}

$weightlist passyaw {
gun     1

}

$animation "tower_0" "tanims\0.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
}

$animation "tower_90" "tanims\90.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
}

$animation "tower_180" "tanims\180.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
	loop
}

$animation "tower_270" "tanims\270.smd" {
	fps 1
	subtract neutral 0
	weightlist "weights_turret"
}

$animation "cannon_min" "tanims\min.smd" {
	fps 1
	weightlist "turret"
	loop
}

$animation "cannon_max" "tanims\max.smd" {
	fps 1
	weightlist "turret"
}

$animation "pass_0" "tanims\s0.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
}

$animation "pass_90" "tanims\s90.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
}

$animation "pass_180" "tanims\s180.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
	loop
}

$animation "pass_270" "tanims\s270.smd" {
	fps 1
	subtract neutral 0
	weightlist "pass"
}

$animation "pass_min" "tanims\s_min.smd" {
	fps 1
	loop
	weightlist "passyaw"
}

$animation "pass_max" "tanims\s_max.smd" {
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