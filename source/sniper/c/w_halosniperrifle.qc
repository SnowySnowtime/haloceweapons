$modelname "models/snowysnowtime/w_sniperrifle.mdl"

$bodygroup "studio"
{
	studio "w_halosniperrifle_w_halosniper.smd"
	studio "w_halosniper_cea.smd"
}

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
	{ "sniperrifle" }
	{ "sravalanche"  }
	{ "srdesert" }
	{ "srgold"    }
	{ "srgreatjourney"   }
	{ "srwoodlands"   }
}

$include "w_halosniperrifle_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$attachment "muzzle" "ValveBiped.muzzle" 13.5 0 -0.5 rotate 0 0 -90
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_halosniperrifle_box.qci"

$include "w_halosniperrifle_bone.qci"

$include "w_halosniperrifle_animation.qci"

$include "w_halosniperrifle_collision.qci"
