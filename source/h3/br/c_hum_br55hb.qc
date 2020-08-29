$modelname "snowysnowtime/vuthakral/c_hum_br55hb.mdl"

$bodygroup "BR55HB"
{
	studio "c_hum_BR55HB.smd"
}

$texturegroup "skinfamilies"
{
    { "base" "rubber" }
    { "camocool" "camocool_rubber" }
    { "fern" "fern_rubber" }
    { "hazard" "hazard_rubber" }
    { "spraypaint" "spraypaint_rubber" }
    { "color" "color_rubber" }
}

$include "c_hum_br55hb_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition 11.327 -13.973 -2.291

$cdmaterials "snowysnowtime/2k/vmt/h3/br"

$attachment "muzzle" "gun" 24.8 0 4.9 rotate 0 0 0
$attachment "1" "gun" -7.8 -1.25 4.9 rotate 0 -90 90

// $include "c_hum_br55hb_box.qci"

$include "c_hum_br55hb_bone.qci"

$include "c_hum_br55hb_animation.qci"
