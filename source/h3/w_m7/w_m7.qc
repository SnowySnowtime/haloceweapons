$modelname "snowysnowtime/vuthakral/w_m7.mdl"

$bodygroup "M7"
{
	studio "w_m7.smd"
	studio "w_m7s.smd"
}

$texturegroup "skinfamilies"
{
    { "smg_metal" "smg_rubber" }
    { "camo" "camo_rubber" }
    { "camo_red" "camo_red" }
    { "tiger" "tiger_rubber" }
    { "color" "color_rubber" }
}

$include "w_m7_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.51 0.052 0.82

$cdmaterials "snowysnowtime/2k/vmt/h3/m7"

$attachment "muzzle" "gun" 6 0 2.55 rotate 0 0 0

// $include "w_m7_box.qci"

$include "w_m7_bone.qci"

$include "w_m7_animation.qci"

$include "w_m7_collision.qci"
