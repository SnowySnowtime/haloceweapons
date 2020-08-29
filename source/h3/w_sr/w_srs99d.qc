$modelname "snowysnowtime/vuthakral/w_srs99d.mdl"

$bodygroup "SRS99D"
{
	studio "w_srs99d.smd"
}

$texturegroup "skinfamilies"
{
    { "sniper_rifle_metal" "sniper_rifle_plastic" "sniper_rifle_rubber" }
    { "avalanche" "avalanche_plastic" "avalanche_rubber" }
    { "gold" "gold_plastic" "gold_rubber" }
    { "desert" "desert_plastic" "desert_rubber" }
    { "woodlands" "woodlands_plastic" "woodlands_rubber" }
    { "color" "color_plastic" "color_rubber" }
    { "wood" "wood_plastic" "wood_rubber" }
}

$include "w_srs99d_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition 0 -17.4 2.761

$cdmaterials "snowysnowtime/2k/vmt/h3/sr"

$attachment "muzzle" "gun" 42 0 0.5 rotate 0 0 0
$attachment "1" "gun" 1 -1 0.6 rotate 0 -90 90

// $include "w_srs99d_box.qci"

$include "w_srs99d_bone.qci"

$include "w_srs99d_animation.qci"

$include "w_srs99d_collision.qci"
