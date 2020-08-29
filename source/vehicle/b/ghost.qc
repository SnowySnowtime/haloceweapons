$modelname "models/snowysnowtime/vehicles/ghost.mdl"
$include "ghost_coll.qci"

$bodygroup "studio"
{
	studio "ghost.smd"
}

$texturegroup "skinfamilies"
{
	{ "ghost" }
	{ "g1" }
	{ "g2" }
	{ "g3" }
	{ "g4" }
}

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/2k/vmt/gh"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$attachment "muzzle1" "frame guns" 19 -18.5 2 rotate 0 0 90
$attachment "muzzle2" "frame guns" 19 18.5 2 rotate 0 0 90
$attachment "aim" "frame guns" 10 0 0 rotate 0 0 90
$attachment "hcenpc_seat1" "frame hull" 17.4 0 -1.255 rotate 0 90 0

$weightlist "turret2" {
	 "frame guns" 1
}

$sequence "idle" {
	"ganims\idle.smd"
	rotate -90
}

$animation neutral "ganims\idle.smd" frames 0 0


$weightlist "gun" {
	 "frame guns" "1"
}

$poseparameter "spin_cannon" -30 50 loop 0

$animation "cannon_min" "ganims\min.smd" {
	fps 1
	subtract neutral 0
	loop
}

$animation "cannon_max" "ganims\max.smd" {
	fps 1
	subtract neutral 0
}

$sequence "spin_cannon" {
	"cannon_min"
	"cannon_max"
	autoplay
	blend "spin_cannon" -30 50
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$animation "fire" "ganims\fire.smd" {
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