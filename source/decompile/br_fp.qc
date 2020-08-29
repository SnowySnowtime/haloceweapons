$modelname "models/snowysnowtime/w_m6d.mdl"

$bodygroup "studio"
{
	studio "w_halo1pistol_Pistol_reference_m6d.smd"
}

$include "w_halo1pistol_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.001 0.614 -2.041

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
	{ "pistol" }
	{ "m6dblackcherry"  }
	{ "m6ddesert" }
	{ "m6dgold"    }
	{ "m6dhazard"   }
	{ "m6djourney"   }
	{ "m6dtoysoldier"   }
	{ "m6dwoodlands"   }
}

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_halo1pistol_box.qci"

$include "w_halo1pistol_bone.qci"

$include "w_halo1pistol_animation.qci"

$include "w_halo1pistol_collision.qci"
