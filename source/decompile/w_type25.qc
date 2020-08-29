// Created by Crowbar 0.62

$modelname "weapons/W_halo_plasmarifle.mdl"

$bodygroup "studio"
{
	studio "w_type25_w_haloplasmarifle.smd"
}

$include "w_type25_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "models\weapons\haloweapons\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_type25_box.qci"

$include "w_type25_bone.qci"

$include "w_type25_animation.qci"

$include "w_type25_collision.qci"
