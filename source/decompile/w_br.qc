$modelname "models/snowysnowtime/w_br.mdl"

$bodygroup "studio"
{
	studio "wbr.smd"
}

$include "w_halo1pistol_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.001 0.614 -2.041

$cdmaterials "snowysnowtime/"

$texturegroup "skinfamilies"
{
	{ "br_diff" }
	{ "br_skin" }
}

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 4.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_halo1pistol_box.qci"

$include "w_halo1pistol_bone.qci"

$include "w_halo1pistol_animation.qci"

$include "w_brph.qci"
