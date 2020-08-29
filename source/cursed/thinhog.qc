$modelname "models/snowysnowtime/vehicles/cursed/thinhog.mdl"
$include "thinhog_coll.qci"

$bodygroup "studio"
{
	studio "thinhog.smd"
}

$bodygroup "wheels"
{
	studio "thinhog_speedless.smd"
	studio "thinhog_speed.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/2k/vmt/wh"

$attachment "wheel_fl" "frame left front tire" 0 20 0
$attachment "wheel_fr" "frame left front tire" 0 -20 0
$attachment "wheel_rl" "frame right back tire" 0 20 0
$attachment "wheel_rr" "frame right back tire" 0 -20 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$attachment "hcenpc_seat1" "frame hull" 17.4 0 -1.255 rotate 0 90 0
$attachment "hcenpc_seat2" "frame gun mount base" 0 -7 -1.255 rotate 0 90 0

$sequence "idle" {
	"tanims\thinhog.smd"
	rotate -90
}

$animation neutral "tanims\thinhog.smd" frames 0 0

$weightlist "steering" {
	 "frame left front engine" 1
}

$weightlist "weights_wheel_fl_spin" {
	 "frame left front tire" 1
}

$weightlist "weights_wheel_rr_spin" {
	 "frame right back tire" 1
}

$weightlist "susp_rr" {
	 "frame right back suspension" 1
}

$weightlist "susp_fl" {
	 "frame left front suspension" 1
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

$animation "flwheel_spin0" "tanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin0" "tanims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}

$animation "flwheel_spin90" "tanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}

$animation "rrwheel_spin90" "tanims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}

$animation "flwheel_spin180" "tanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}

$animation "rrwheel_spin180" "tanims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}

$animation "flwheel_spin270" "tanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin270" "tanims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}

$animation "wheel_fl_low" "tanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_fl_high" "tanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_rr_low" "tanims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rr_high" "tanims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "steeringl" "tanims\steeringl.smd" {
	fps 1
	subtract neutral 0
	weightlist "steering"
}

$animation "steeringr" "tanims\steeringr.smd" {
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