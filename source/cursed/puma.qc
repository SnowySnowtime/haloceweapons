$modelname "models/snowysnowtime/vehicles/cursed/puma.mdl"
$include "puma_coll.qci"

$bodygroup "studio"
{
	studio "puma.smd"
}

$surfaceprop "metalvehicle"

$bodygroup "wheels"
{
	studio "puma_speedless.smd"
	studio "puma_speed.smd"
}

$contents "solid"

$illumposition 0 0 80

$cdmaterials "snowysnowtime/2k/vmt/wh"

$attachment "wheel_fl" "frame left front tire" 0 0 0
$attachment "wheel_fr" "frame right front tire" 0 0 0
$attachment "wheel_rl" "frame left back tire" 0 0 0
$attachment "wheel_rr" "frame right back tire" 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$attachment "turret" "frame gun" 0 0 0 rotate 0 0 0
$attachment "muzzle" "frame barrels" 0 39.621 0 rotate 0 90 0
$attachment "hcenpc_seat1" "frame hull" 17.4 0 -1.255 rotate 0 90 0
$attachment "hcenpc_seat2" "frame gun mount base" 0 -7 -1.255 rotate 0 90 0

$sequence "idle" {
	"pumanims\puma.smd"
	rotate -90
}

$animation neutral "pumanims\puma.smd" frames 0 0

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

$animation "frwheel_spin0" "pumanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin0" "pumanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin0" "pumanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin0" "pumanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin90" "pumanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin90" "pumanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin90" "pumanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin90" "pumanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin180" "pumanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin180" "pumanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin180" "pumanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin180" "pumanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin270" "pumanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin270" "pumanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin270" "pumanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin270" "pumanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "wheel_fr_low" "pumanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fr_high" "pumanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fl_low" "pumanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_fl_high" "pumanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_rr_low" "pumanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rr_high" "pumanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rl_low" "pumanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "wheel_rl_high" "pumanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "steeringl" "pumanims\steeringl.smd" {
	fps 1
	subtract neutral 0
	weightlist "steering"
}

$animation "steeringr" "pumanims\steeringr.smd" {
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