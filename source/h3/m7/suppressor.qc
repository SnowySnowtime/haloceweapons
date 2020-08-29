$modelname "models/snowysnowtime/smg_sight.mdl"

$bodygroup "studio"
{
	studio "smg_sight.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/2k/vmt/h3"

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96
$attachment "laser" "holosight" 8 0.85 1.5 rotate 0 0 0
$attachment "holosight" "holosight" 0.00 0.36 0.4 rotate 0 0 0

$sectionframes 30 132

$sequence "idle" {
	"c_hum_m7_anims\smg_sight.smd"
}