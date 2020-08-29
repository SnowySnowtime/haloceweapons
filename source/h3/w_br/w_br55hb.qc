$modelname "snowysnowtime/vuthakral/w_br55hb.mdl"

$bodygroup "BR55HB"
{
	studio "w_br55hb.smd"
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

$include "w_br55hb_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition 6.087 0.091 4.089

$cdmaterials "snowysnowtime/2k/vmt/h3/br"

$attachment "muzzle" "gun" 24.8 0 4.9 rotate 0 0 0

// $include "w_br55hb_box.qci"

$include "w_br55hb_bone.qci"

$include "w_br55hb_animation.qci"

$include "w_br55hb_collision.qci"
