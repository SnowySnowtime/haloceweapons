$modelname "snowysnowtime/vuthakral/c_hum_plasmarifle.mdl"

$bodygroup "plasmarifle"
{
	studio "c_hum_plasmarifle.smd"
}

$texturegroup "skinfamilies"
{
    { "plasma_rifle" }
    { "schism" }
}

$include "c_hum_plasmarifle_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.294 -11.284 -7.487

$cdmaterials "snowysnowtime/2k/vmt/h3/pr"

$attachment "muzzle" "gun" 8.5 0 0 rotate 0 0 0

// $include "c_hum_plasmarifle_box.qci"

$include "c_hum_plasmarifle_bone.qci"

$include "c_hum_plasmarifle_animation.qci"
