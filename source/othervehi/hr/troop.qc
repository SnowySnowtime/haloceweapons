$modelname "models/snowysnowtime/vehicles/haloreach/warthog_troop.mdl"
$include "troop_collis.qci"

$bodygroup "studio"
{
	studio "warthog_troop.smd"
}

$bodygroup "wheels"
{
	studio "wheel_speedless.smd"
	studio "wheel_speed.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/halo/vmt/hr/w"

$attachment "wheel_fl" "b_wheel_front_left" 0 0 0
$attachment "wheel_fr" "b_wheel_front_right" 0 0 0
$attachment "wheel_rl" "b_wheel_back_left" 0 0 0
$attachment "wheel_rr" "b_wheel_back_right" 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$attachment "hcenpc_seat1" "b_chassis" 17.4 0 -1.255 rotate 0 90 0

$sequence "idle" {
	"wanim\civil.smd"
	rotate -90
}

$animation neutral "wanim\civil.smd" frames 0 0

$weightlist "weights_wheel_fr_spin" {
	 "b_wheel_front_right" 1
}

$weightlist "steering" {
	 "b_suspension_front_left" 1
	 "b_suspension_front_right" 1
	 "b_steering_wheel" 1
}

$weightlist "weights_wheel_fl_spin" {
	 "b_wheel_front_left" 1
}

$weightlist "weights_wheel_rr_spin" {
	 "b_wheel_back_right" 1
}

$weightlist "weights_wheel_rl_spin" {
	 "b_wheel_back_left" 1
}

$weightlist "susp_rl" {
	 "b_suspension_back_left" 1
}

$weightlist "susp_rr" {
	 "b_suspension_back_right" 1
}

$weightlist "susp_fl" {
	 "b_suspension_front_left" 1
}

$weightlist "susp_fr" {
	 "b_suspension_front_right" 1
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

$animation "frwheel_spin0" "wanim\w0.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin0" "wanim\w0.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin0" "wanim\w0.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin0" "wanim\w0.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin90" "wanim\w90.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin90" "wanim\w90.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin90" "wanim\w90.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin90" "wanim\w90.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin180" "wanim\w180.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin180" "wanim\w180.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin180" "wanim\w180.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin180" "wanim\w180.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin270" "wanim\w270.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin270" "wanim\w270.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin270" "wanim\w270.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin270" "wanim\w270.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "wheel_fr_low" "wanim\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fr_high" "wanim\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fl_low" "wanim\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_fl_high" "wanim\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_rr_low" "wanim\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rr_high" "wanim\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rl_low" "wanim\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "wheel_rl_high" "wanim\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "steeringl" "wanim\steeringl.smd" {
	fps 1
	subtract neutral 0
	weightlist "steering"
}

$animation "steeringr" "wanim\steeringr.smd" {
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