$modelname "snowysnowtime/vuthakral/w_ma5c.mdl"

$bodygroup "ma5c"
{
	studio "w_ma5c.smd"
}

$texturegroup "skinfamilies"
{
    { "base" "rubber" }
    { "gold" "gold_rubber" }
    { "squirt" "squirt_rubber" }
    { "wasteland" "wasteland_rubber" }
    { "woodlands" "woodlands_rubber" }
}

$include "w_ma5c_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition 6.782 0.089 2.901

$cdmaterials "snowysnowtime/2k/vmt/h3/ar"

$attachment "muzzle" "gun" 23.1 0 5.1 rotate 0 0 0
$attachment "1" "gun" -7.8 -1.25 4.9 rotate 0 -90 90

// $include "w_ma5c_box.qci"

$include "w_ma5c_bone.qci"

$include "w_ma5c_animation.qci"

$include "w_ma5c_collision.qci"
