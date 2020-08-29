$modelname "snowysnowtime/vuthakral/c_hum_m7.mdl"

$bodygroup "M7"
{
	studio "c_hum_m7.smd"
}

$bodygroup "Optic"
{
	studio "none.smd"
	studio "optic.smd"
}

$bodygroup "Suppressor"
{
	studio "none.smd"
	studio "suppressor.smd"
}

$texturegroup "skinfamilies"
{
    { "smg_metal" "smg_rubber" }
    { "camo" "camo_rubber" }
    { "camo_red" "camo_red" }
    { "tiger" "tiger_rubber" }
    { "color" "color_rubber" }
}

$include "c_hum_m7_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -1.15 -14.895 -6.93

$cdmaterials "snowysnowtime/2k/vmt/h3/m7"

$attachment "muzzle" "gun" 6 0 2.55 rotate 0 0 0
$attachment "muzzlesup" "gun" 13.75 0.00 2.55 rotate 0 0 0

// $include "c_hum_m7_box.qci"

$include "c_hum_m7_bone.qci"

$include "c_hum_m7_animation.qci"
