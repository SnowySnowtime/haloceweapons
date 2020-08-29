$modelname "models/snowysnowtime/vehicles/banshee.mdl"
$include "banshee_coll.qci"

$bodygroup "studio"
{
	studio "banshee.smd"
}

$texturegroup "skinfamilies"
{
	{ "banshee" }
	{ "b1" }
	{ "b2" }
	{ "b3" }
	{ "b4" }
}

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 20

$cdmaterials "snowysnowtime/2k/vmt/bn"

$attachment "muzzle1" "frame hull" 55.00 -16.5 -10.00
$attachment "muzzle2" "frame hull" 55.00 16.5 -10.00

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
}

$sequence "takeoff" {
	"anims\close.smd"
	fadein 0.2
	fadeout 0.2
	rotate -90
}

$sequence "landing" {
	"anims\open.smd"
	fadein 0.2
	fadeout 0.2
	rotate -90
}