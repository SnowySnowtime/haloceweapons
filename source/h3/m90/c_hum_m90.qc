$modelname "snowysnowtime/vuthakral/c_hum_m90.mdl"

$bodygroup "M90"
{
	studio "c_hum_m90_c_h3sg.smd"
}

$texturegroup "skinfamilies"
{
	{ "shotgun" "shotgun_dull" "shotgun_shiny" }
    { "gold" "gold_dull" "gold_shiny" }
    { "woodlands" "woodlands_dull" "woodlands_shiny" }
    { "hazard" "hazard_dull" "hazard_shiny" }
    { "color" "color_dull" "color_shiny" }
}

$include "c_hum_m90_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -1.901 -12.862 -8.183

$cdmaterials "snowysnowtime/2k/vmt/h3/sg"

$attachment "muzzle" "gun" 19 0 -0.5 rotate 0 0 0
$attachment "1" "gun" -2.8 -1 -0.4 rotate 0 -90 90

// $include "c_hum_m90_box.qci"

$include "c_hum_m90_bone.qci"

$include "c_hum_m90_animation.qci"
