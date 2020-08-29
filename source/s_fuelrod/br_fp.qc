$modelname "models/snowysnowtime/fp_cefuelrod.mdl"

$bodygroup "studio"
{
	studio "fp_fuelrod.smd"
}

$bodygroup "arms"
{
	studio "cyborg_arms.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$cdmaterials "snowysnowtime/"

$attachment "muzzle" "frame gun" 16 4.5 0 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$definebone "frame bone24" "" 0 0 0 0 0 0 0 -90 0 0 -90 0
$definebone "frame l upperarm" "frame bone24" 0 9.399039 0 0 0 0 0 0 0 0 0 0
$definebone "frame l forearm" "frame l upperarm" 10.250686 0 0 0 0 0 0 0 0 0 0 0
$definebone "frame l wriste" "frame l forearm" 10.893662 0 -0.000001 0 0 0 0 0 0 0 0 0
$definebone "frame l index low" "frame l wriste" 3.465582 0.435442 1.515124 -7.99511 2.019676 -0.280979 0 0 0 0 0 0
$definebone "frame l index mid" "frame l index low" 1.703121 0.000002 0 0 -3.999933 0 0 0 0 0 0 0
$definebone "frame l index tip" "frame l index mid" 1.101931 0 0 -0.000001 -5.499996 0 0 0 0 0 0 0
$definebone "frame l middlelow" "frame l wriste" 3.639906 0.721579 0.325856 0 0 0 0 0 0 0 0 0
$definebone "frame l middle mid" "frame l middlelow" 1.927462 0 0 0 -2.499987 0 0 0 0 0 0 0
$definebone "frame l middle tip" "frame l middle mid" 1.213573 -0.000003 0 0 -6.000014 0 0 0 0 0 0 0
$definebone "frame l pinky low" "frame l wriste" 3.245012 0.392602 -1.817072 11.499608 0.510047 0.088579 0 0 0 0 0 0
$definebone "frame l pinky mid" "frame l pinky low" 1.390337 0 0 0 -2.499987 0 0 0 0 0 0 0
$definebone "frame l pinky tip" "frame l pinky mid" 0.963238 -0.000002 0 0.000001 -7.000057 0 0 0 0 0 0 0
$definebone "frame l ring low" "frame l wriste" 3.676435 0.640863 -0.88904 4.499438 1.002905 0.061192 0 0 0 0 0 0
$definebone "frame l ring mid" "frame l ring low" 1.733053 0 0 0 0 0 0 0 0 0 0 0
$definebone "frame l ring tip" "frame l ring mid" 1.212692 -0.000001 0 0 -12.999956 0 0 0 0 0 0 0
$definebone "frame l thumb low" "frame l wriste" 0.853683 -0.404337 1.467987 -36.016472 -18.661981 11.232666 0 0 0 0 0 0
$definebone "frame l thumb mid" "frame l thumb low" 1.550021 0.000002 0 6.464225 6.038576 0.682335 0 0 0 0 0 0
$definebone "frame l thumb tip" "frame l thumb mid" 1.099382 0.000001 -0.000002 4.999976 0 0 0 0 0 0 0 0
$definebone "frame r upperarm" "frame bone24" 0 -9.399 0 0 0 0 0 0 0 0 0 0
$definebone "frame r forearm" "frame r upperarm" 10.258252 0 0 0 0 0 0 0 0 0 0 0
$definebone "frame r wriste" "frame r forearm" 10.886317 0 0 0 0 0 0 0 0 0 0 0
$definebone "frame r index low" "frame r wriste" 3.465467 -0.43542 1.515205 -7.99511 -2.019676 0.280979 0 0 0 0 0 0
$definebone "frame r index mid" "frame r index low" 1.696211 -0.000002 0 0 3.999933 0 0 0 0 0 0 0
$definebone "frame r index tip" "frame r index mid" 1.122778 0 0 -0.000001 5.499996 0 0 0 0 0 0 0
$definebone "frame r middle low" "frame r wriste" 3.639866 -0.721514 0.326634 0 0 0 0 0 0 0 0 0
$definebone "frame r middle mid" "frame r middle low" 1.92243 0 0 0 2.499987 0 0 0 0 0 0 0
$definebone "frame r middle tip" "frame r middle mid" 1.224342 0.000001 0 0 6.000014 0 0 0 0 0 0 0
$definebone "frame r pinky low" "frame r wriste" 3.24468 -0.392568 -1.816949 11.49955 -0.510162 -0.1017 0 0 0 0 0 0
$definebone "frame r pinky mid" "frame r pinky low" 1.384237 0.000002 0 0 2.499987 0 0 0 0 0 0 0
$definebone "frame r pinky tip" "frame r pinky mid" 0.949631 0.000001 0 0.000001 7.000057 0 0 0 0 0 0 0
$definebone "frame r ring low" "frame r wriste" 3.676254 -0.641084 -0.887103 4.499953 -1.000041 0.000057 0 0 0 0 0 0
$definebone "frame r ring mid" "frame r ring low" 1.728128 0.000001 0 0 0 0 0 0 0 0 0 0
$definebone "frame r ring tip" "frame r ring mid" 1.204506 -0.000001 0 0 12.999953 0 0 0 0 0 0 0
$definebone "frame r thumb low" "frame r wriste" 0.853033 0.400695 1.468595 -36.016472 18.661981 -11.232666 0 0 0 0 0 0
$definebone "frame r thumb mid" "frame r thumb low" 1.508486 0 0 6.470014 -5.535403 -0.62567 0 0 0 0 0 0
$definebone "frame r thumb tip" "frame r thumb mid" 1.081697 0.000001 0.000001 4.999974 -0.000002 0 0 0 0 0 0 0
$definebone "frame gun" "frame r wriste" -21.217194 9.399 -0.127622 0 0 0 0 0 0 0 0 0
$definebone "frame magazine" "frame gun" 0 0 0 10.500025 0 0 0 0 0 0 0 0
$definebone "frame bullet" "frame magazine" 0 0 0 10.500025 0 0 0 0 0 0 0 0
$definebone "frame ophandle" "frame gun" 0 0 0 10.500025 0 0 0 0 0 0 0 0

$sectionframes 30 132

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "2"
	rotate -90
	snap
	fps 30
}

$sequence "draw" {
	"anims\deploy.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}
$sequence "melee" {
	"anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.0
	fadeout 0.1
	rotate -90
	fps 30
}
