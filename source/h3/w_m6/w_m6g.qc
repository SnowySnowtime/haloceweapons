$modelname "snowysnowtime/vuthakral/w_m6g.mdl"

$bodygroup "M6G"
{
	studio "w_M6G.smd"
}

$texturegroup "skinfamilies"
{
    { "magnum" "magnum_dull" "magnum_luminous" }
    { "dino" "dino_dull" "magnum_luminous" }
    { "gold" "gold_dull" "magnum_luminous" }
    { "orange" "orange_dull" "magnum_luminous" }
    { "wornblue" "wornblue_dull" "magnum_luminous" }
    { "color" "color_dull" "color_luminous" }
}

$include "w_m6g_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition 0 -1.315 1.397

$cdmaterials "snowysnowtime/2k/vmt/h3/m6"

$attachment "muzzle" "gun" 5.3 0 2.4 rotate 0 0 0
$attachment "1" "gun" 0.7 -1 2.4 rotate 0 -90 90

// $include "w_m6g_box.qci"

$include "w_m6g_bone.qci"

$include "w_m6g_animation.qci"

$include "w_m6g_collision.qci"
