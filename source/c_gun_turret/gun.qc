$modelname "models/snowysnowtime/vehicles/c_gun_turret.mdl"
$include "gun_phys.qci"

$bodygroup "studio"
{
	studio "c_gun_turret.smd"
}

$texturegroup "skinfamilies"
{
	{ "gunturretbase" "gunturretweapon" }
	{ "gun_c" "turret_c" }
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/2k/vmt/gun"

$attachment "player" "frame turret end" 0 0 0 rotate 0 0 0
$attachment "muzzle1" "frame turret end" 92 0 21 rotate 0 0 0
$attachment "muzzle2" "frame turret end" 92 -2.5 30.5 rotate 0 0 0
$attachment "muzzle3" "frame turret end" 92 2.5 30.5 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "spin_cannon" -35 60 loop 0

$weightlist "turret" {
	 "frame turret" 1
}

$weightlist "turret2" {
	 "frame turret end" 1
	 "frame turret" 1
	 "frame body" "0"
}

$animation neutral "anims\idle.smd" frames 0 0

$sequence "idle" {
	"anims\idle.smd"
	rotate -90
}

$animation "fire" "anims\firing.smd" {
	fps 30
	weightlist "turret2"
}

$sequence "shoot" {
	"fire"
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
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
	weightlist "turret"
	loop
}

$animation "cannon_max" "anims\max.smd" {
	fps 1
	subtract neutral 0
	weightlist "turret"
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
	blend "spin_cannon" -35 60
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}