$modelname "models/snowysnowtime/vehicles/halo2/warthog_gauss.mdl"
$include "collis.qci"

$bodygroup "studio"
{
	studio "warthog_gauss.smd"
}

$bodygroup "wheels"
{
	studio "wheel_speedless.smd"
	studio "wheel_speed.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/halo/vmt"

$attachment "wheel_fl" "lf_tire" 0 0 0
$attachment "wheel_fr" "rf_tire" 0 0 0
$attachment "wheel_rl" "lb_tire" 0 0 0
$attachment "wheel_rr" "rb_tire" 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0
$attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$attachment "hcenpc_seat1" "hull" 17.4 0 -1.255 rotate 0 90 0
$attachment "hcenpc_seat2" "gun_mount_base" 0 -7 -1.255 rotate 0 90 0

$sequence "idle" {
	"wanim\e_chain.smd"
	rotate -90
}

$animation neutral "wanim\e_chain.smd" frames 0 0

$weightlist "weights_wheel_fr_spin" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 0
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 1
	 "steering_wheel" 0
}

$weightlist "steering" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 0
	 "lf_suspension" 0
	 "lf_engine" 1
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 1
	 "rf_tire" 0
	 "steering_wheel" 1
}

$weightlist "weights_wheel_fl_spin" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 0
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 1
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "weights_wheel_rr_spin" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 0
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 1
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "weights_wheel_rl_spin" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 1
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "susp_rl" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 1
	 "lb_engine" 0
	 "lb_tire" 1
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "susp_rr" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 1
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 1
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "susp_fl" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 1
	 "lf_suspension" 1
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "susp_fr" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 1
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 1
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "turret" {
	 "hull" 0
	 "stationary_mount" 1
	 "gun_mount_base" 0
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 0
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
}

$weightlist "gun" {
	 "hull" 0
	 "stationary_mount" 0
	 "gun_mount_base" 0
	 "gun" 1
	 "lb_suspension" 0
	 "lb_engine" 0
	 "lb_tire" 0
	 "lf_suspension" 0
	 "lf_engine" 0
	 "lf_tire" 0
	 "rb_suspension" 0
	 "rb_engine" 0
	 "rb_tire" 0
	 "rf_suspension" 0
	 "rf_engine" 0
	 "rf_tire" 0
	 "steering_wheel" 0
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

$animation "tower_0" "wanim\chain0.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "tower_90" "wanim\chain90.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "tower_180" "wanim\chain180.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
	loop
}

$animation "tower_270" "wanim\chain270.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "cannon_min" "wanim\chain_min.smd" {
	fps 1
	subtract neutral 0
	loop
}

$animation "cannon_max" "wanim\chain_max.smd" {
	fps 1
	subtract neutral 0
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