$modelname "snowysnowtime/vuthakral/w_plasmarifle.mdl"

$bodygroup "plasmarifle"
{
	studio "w_plasmarifle.smd"
}

$texturegroup "skinfamilies"
{
    { "plasma_rifle" }
    { "schism" }
}

$include "w_plasmarifle_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -1.077 -0.003 -0.61

$cdmaterials "snowysnowtime/2k/vmt/h3"

$attachment "muzzle" "gun" 8.5 0 0 rotate 0 0 0

// $include "w_plasmarifle_box.qci"

$include "w_plasmarifle_bone.qci"

$include "w_plasmarifle_animation.qci"

$include "w_plasmarifle_collision.qci"
