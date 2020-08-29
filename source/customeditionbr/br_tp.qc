$modelname "snowysnowtime/br_tp.mdl"

$bodygroup "studio"
{
	studio "br_tp.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "snowysnowtime\"

$cbox 0 0 0 0 0 0

$bbox -7.386 -3.282 -10.41 14.615 3.091 2.561


$sequence "idle" {
	"anims\brtp_ref.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
$collisionmodel "brtp_phys.smd"
{
	$mass 25
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
