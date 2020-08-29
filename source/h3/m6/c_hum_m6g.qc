$modelname "snowysnowtime/vuthakral/c_hum_m6g.mdl"

$bodygroup "magnum"
{
	studio "c_hum_m6g.smd"
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

$include "c_hum_m6g_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -1.307 -16.235 -6.806

$cdmaterials "snowysnowtime/2k/vmt/h3/m6"

$attachment "muzzle" "gun" 11 0 2.7 rotate 0 0 0
$attachment "1" "gun" 0.7 -0.35 3 rotate 0 -90 90

// $include "c_hum_m6g_box.qci"

$include "c_hum_m6g_bone.qci"

$include "c_hum_m6g_animation.qci"
