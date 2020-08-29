$modelname "snowysnowtime/vuthakral/c_hum_ma5c.mdl"

$bodygroup "ma5c"
{
	studio "c_hum_ma5c.smd"
}

$texturegroup "skinfamilies"
{
    { "base" "rubber" }
    { "gold" "gold_rubber" }
    { "squirt" "squirt_rubber" }
    { "wasteland" "wasteland_rubber" }
    { "woodlands" "woodlands_rubber" }
}

$include "c_hum_ma5c_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.204 -10.311 -5.993

$cdmaterials "snowysnowtime/2k/vmt/h3/ar"

$attachment "muzzle" "gun" 23.1 0 5.1 rotate 0 0 0
$attachment "1" "gun" -7.8 -1.25 4.9 rotate 0 -90 90

// $include "c_hum_ma5c_box.qci"

$include "c_hum_ma5c_bone.qci"

$include "c_hum_ma5c_animation.qci"
