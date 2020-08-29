$modelname "models/snowysnowtime/vehicles/cursed/sedan.mdl"
$include "sedan_coll.qci"

$bodygroup "studio"
{
	studio "warthog_sedan.smd"
}

$bodygroup "wheels"
{
	studio "warthog_sedan_speedless.smd"
	studio "warthog_sedan_speed.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/2k/vmt/wh"

$attachment "wheel_fl" "frame left front tire" 0 0 0
$attachment "wheel_fr" "frame right front tire" 0 0 0
$attachment "wheel_rl" "frame left back tire" 0 0 0
$attachment "wheel_rr" "frame right back tire" 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$attachment "turret" "frame gun" 0 0 0 rotate 0 0 0
$attachment "muzzle" "frame barrels" 39.621 0 0  rotate 0 0 0
$attachment "hcenpc_seat1" "frame hull" 17.4 0 -1.255 rotate 0 90 0
$attachment "hcenpc_seat2" "frame gun mount base" 0 -7 -1.255 rotate 0 90 0

$sequence "idle" {
	"sedanims\sedan.smd"
	rotate -90
}

$animation neutral "sedanims\sedan.smd" frames 0 0

$weightlist "weights_wheel_fr_spin" {
	 "frame right front tire" 1
}

$weightlist "steering" {
	 "frame left front engine" 1
	 "frame right front engine" 1
}

$weightlist "weights_wheel_fl_spin" {
	 "frame left front tire" 1
}

$weightlist "weights_wheel_rr_spin" {
	 "frame right back tire" 1
}

$weightlist "weights_wheel_rl_spin" {
	 "frame left back tire" 1
}

$weightlist "susp_rl" {
	 "frame left back suspension" 1
}

$weightlist "susp_rr" {
	 "frame right back suspension" 1
}

$weightlist "susp_fl" {
	 "frame left front suspension" 1
}

$weightlist "susp_fr" {
	 "frame right front suspension" 1
}

$weightlist "turret" {
	 "frame gun mount base" 1
}

$weightlist "gun" {
	 "frame gun" 1
}

$poseparameter "vehicle_steer" -1 1
$poseparameter "vehicle_wheel_fl_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_fr_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_rr_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_rl_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_fl_height" -1 1 loop 360
$poseparameter "vehicle_wheel_fr_height" -1 1 loop 360
$poseparameter "vehicle_wheel_rr_height" -1 1 loop 360
$poseparameter "vehicle_wheel_rl_height" -1 1 loop 360
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "spin_cannon" -20 50 loop 0

$animation "frwheel_spin0" "sedanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin0" "sedanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin0" "sedanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin0" "sedanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin90" "sedanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin90" "sedanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin90" "sedanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin90" "sedanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin180" "sedanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin180" "sedanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin180" "sedanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin180" "sedanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin270" "sedanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin270" "sedanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin270" "sedanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin270" "sedanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "wheel_fr_low" "sedanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fr_high" "sedanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fl_low" "sedanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_fl_high" "sedanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_rr_low" "sedanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rr_high" "sedanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rl_low" "sedanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "wheel_rl_high" "sedanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "tower_0" "sedanims\chain0.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "tower_90" "sedanims\chain90.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "tower_180" "sedanims\chain180.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
	loop
}

$animation "tower_270" "sedanims\chain270.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "cannon_min" "sedanims\chain_min.smd" {
	fps 1
	subtract neutral 0
	loop
}

$animation "cannon_max" "sedanims\chain_max.smd" {
	fps 1
	subtract neutral 0
}

$animation "steeringl" "sedanims\steeringl.smd" {
	fps 1
	subtract neutral 0
	weightlist "steering"
}

$animation "steeringr" "sedanims\steeringr.smd" {
	fps 1
	subtract neutral 0
	weightlist "steering"
}

$sequence "turning" {
	"steeringl"
	"steeringr"
	autoplay
	blend "vehicle_steer" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fr_suspension" {
	"wheel_fr_low"
	"wheel_fr_high"
	autoplay
	blend "vehicle_wheel_fr_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fr_spin" {
	"frwheel_spin0"
	"frwheel_spin90"
	"frwheel_spin180"
	"frwheel_spin270"
	"flwheel_spin0"
	autoplay
	blend "vehicle_wheel_fr_spin" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fl_suspension" {
	"wheel_fl_low"
	"wheel_fl_high"
	autoplay
	blend "vehicle_wheel_fl_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fl_spin" {
	"flwheel_spin0"
	"flwheel_spin90"
	"flwheel_spin180"
	"flwheel_spin270"
	"flwheel_spin0"
	autoplay
	blend "vehicle_wheel_fl_spin" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rr_suspension" {
	"wheel_rr_low"
	"wheel_rr_high"
	autoplay
	blend "vehicle_wheel_rr_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rr_spin" {
	"rrwheel_spin0"
	"rrwheel_spin90"
	"rrwheel_spin180"
	"rrwheel_spin270"
	"flwheel_spin0"
	autoplay
	blend "vehicle_wheel_rr_spin" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rl_suspension" {
	"wheel_rl_low"
	"wheel_rl_high"
	autoplay
	blend "vehicle_wheel_rl_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rl_spin" {
	"rlwheel_spin0"
	"rlwheel_spin90"
	"rlwheel_spin180"
	"rlwheel_spin270"
	"flwheel_spin0"
	autoplay
	blend "vehicle_wheel_rl_spin" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
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
	blend "spin_cannon" -20 50
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}