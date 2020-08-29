// Created by Crowbar 0.62

$modelname "vuthakral\halo\weapons\c_hum_SPNKr.mdl"

$bodygroup "SPNKr"
{
	studio "c_hum_SPNKr.smd"
}

$include "c_hum_spnkr_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -4.903 -11.543 -5.296

$cdmaterials "models\vuthakral\"
$cdmaterials "models\vuthakral\halo\weapons\SPNKr\"
$cdmaterials "models\vuthakral\halo\weapons\"

$attachment "muzzle" "b_gun" 20 1 5.25 rotate 0 0 0

// $include "c_hum_spnkr_box.qci"

$include "c_hum_spnkr_bone.qci"

$include "c_hum_spnkr_animation.qci"
