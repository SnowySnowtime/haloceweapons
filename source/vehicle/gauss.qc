$modelname "models/snowysnowtime/vehicles/warthog_gauss.mdl"
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

$texturegroup "skinfamilies"
{
	{ "warthog" "warthog_tires" }
	{ "wh" "wtire2" }
	{ "wp" "wtire3" }
	{ "wr" "wtire4" }
	{ "wro" "wtire5" }
	{ "wrc" "wtire6" }
	{ "wrs" "wtire7" }
	{ "wrst" "wtire8" }
	{ "color" "wtirecolor" }
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

$definebone "frame hull" "" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame gun mount base" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame chain" "frame gun mount base" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame gun" "frame gun mount base" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame barrels" "frame gun" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left back suspension" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left back engine" "frame left back suspension" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left back tire" "frame left back engine" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left front suspension" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left front engine" "frame left front suspension" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left front tire" "frame left front engine" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right back suspension" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right back engine" "frame right back suspension" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right back tire" "frame right back engine" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right front suspension" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right front engine" "frame right front suspension" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right front tire" "frame right front engine" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame steering wheel" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$attachment "turret" "frame gun" 0 0 0 rotate 0 0 0
$attachment "muzzle" "frame barrels" 0 39.621 0 rotate 0 90 0
$attachment "hcenpc_seat1" "frame hull" 17.4 0 -1.255 rotate 0 90 0
$attachment "hcenpc_seat2" "frame gun mount base" 0 -7 -1.255 rotate 0 90 0

$sequence "idle" {
	"anims\e.smd"
	rotate -90
}

$animation neutral "anims\e.smd" frames 0 0

$weightlist "weights_wheel_fr_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 1
	 "frame steering wheel" 0
}

$weightlist "steering" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 1
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 1
	 "frame right front tire" 0
	 "frame steering wheel" 1
}

$weightlist "weights_wheel_fl_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 1
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "weights_wheel_rr_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 1
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "weights_wheel_rl_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 1
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "susp_rl" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 1
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "susp_rr" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 1
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "susp_fl" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 1
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "susp_fr" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 1
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "turret" {
	 "frame hull" 0
	 "frame gun mount base" 1
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "gun" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 1
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
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
$poseparameter "spin_cannon" -25 40 loop 0

$animation "frwheel_spin0" "anims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin0" "anims\w0.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin0" "anims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin0" "anims\w0.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin90" "anims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin90" "anims\w90.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin90" "anims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin90" "anims\w90.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin180" "anims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin180" "anims\w180.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin180" "anims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin180" "anims\w180.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "frwheel_spin270" "anims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fr_spin"
	subtract neutral 0
}
$animation "flwheel_spin270" "anims\w270.smd" {
	fps 1
	weightlist "weights_wheel_fl_spin"
	subtract neutral 0
}
$animation "rrwheel_spin270" "anims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rr_spin"
	subtract neutral 0
}
$animation "rlwheel_spin270" "anims\w270.smd" {
	fps 1
	weightlist "weights_wheel_rl_spin"
	subtract neutral 0
}

$animation "wheel_fr_low" "anims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fr_high" "anims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fr"
}

$animation "wheel_fl_low" "anims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_fl_high" "anims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_fl"
}

$animation "wheel_rr_low" "anims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rr_high" "anims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rr"
}

$animation "wheel_rl_low" "anims\susmin.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "wheel_rl_high" "anims\susmax.smd" {
	fps 1
	subtract neutral 0
	weightlist "susp_rl"
}

$animation "tower_0" "anims\0.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "tower_90" "anims\90.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "tower_180" "anims\180.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
	loop
}

$animation "tower_270" "anims\270.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
}

$animation "cannon_min" "anims\min.smd" {
	fps 1
	subtract neutral 0
	loop
}

$animation "cannon_max" "anims\max.smd" {
	fps 1
	subtract neutral 0
}

$animation "steeringl" "anims\left.smd" {
	fps 1
	subtract neutral 0
	weightlist "steering"
}

$animation "steeringr" "anims\right.smd" {
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
	blend "spin_cannon" -25 40
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}