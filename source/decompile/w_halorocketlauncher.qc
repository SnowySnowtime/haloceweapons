// Created by Crowbar 0.62

$modelname "models/snowysnowtime/w_rocket.mdl"

$bodygroup "studio"
{
	studio "w_halorocketlauncher_w_halorocket.smd"
}

$include "w_halorocketlauncher_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
	{ "rocket" }
	{ "rlcorrosion" }
	{ "rldesert" }
	{ "rlhuntersblood"    }
}

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_halorocketlauncher_box.qci"

$include "w_halorocketlauncher_bone.qci"

$include "w_halorocketlauncher_animation.qci"

$include "w_halorocketlauncher_collision.qci"
