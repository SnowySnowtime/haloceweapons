$modelname "models/snowysnowtime/vehicles/scorpion.mdl"
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
	{ "scorpion_body" }
	{ "arctic" }
	{ "bengal" }
	{ "snow" }
	{ "package" }
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/2k/vmt/sc"

$attachment "turret" "frame cannon" 0 0 0 rotate 0 0 0
$attachment "turret_cannon" "muzzle" 0 0 0 rotate 0 0 0
$attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$attachment "mgmuzzle" "frame aiming gun" 0 59.961 0 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$definebone "frame hull" "" 0 0 0 150.500025 0 0 0 0 0 0 -90 0
$definebone "tank" "" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "tread" "" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame hatch driver" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame hatch passenger" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left back tread" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right back tread" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame right front tread" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame left front tread" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame turret rotator" "frame hull" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame turret" "frame turret rotator" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame aiming gun" "frame turret" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "frame cannon" "frame turret" 0 0 0 0 0 0 0 0 0 0 -90 0
$definebone "muzzle" "frame cannon" 0 0 0 0 0 0 0 0 0 0 0 0
$attachment "hcenpc_tankseat1" "frame right back tread" 45.844 0 16.203 rotate 0 0 0
$attachment "hcenpc_tankseat2" "frame left back tread" -45.844 0 16.203 rotate 0 180 0
$attachment "hcenpc_tankseat3" "frame right front tread" -45.844 0 16.203 rotate 0 0 0
$attachment "hcenpc_tankseat4" "frame left front tread" -45.844 0 16.203 rotate 0 180 0

$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "spin_cannon" -20 60 loop 0

$sequence "idle" {
	"tanims\t_idle.smd"
	rotate -90
}

$sequence "shoot" {
	"tanims\shoot.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
}

$animation neutral "tanims\t_idle.smd" frames 0 0

$animation "tower_0" "tanims\cannon_rot0.smd" {
	fps 1
	subtract neutral 0
}

$animation "tower_90" "tanims\cannon_rot90.smd" {
	fps 1
	subtract neutral 0
}

$animation "tower_180" "tanims\cannon_rot180.smd" {
	fps 1
	subtract neutral 0
	loop
}

$animation "tower_270" "tanims\cannon_rot270.smd" {
	fps 1
	subtract neutral 0
}

$animation "cannon_min" "tanims\cannon_min.smd" {
	fps 1
	loop
}

$animation "cannon_max" "tanims\cannon_max.smd" {
	fps 1
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
	blend "spin_cannon" -20 60
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}