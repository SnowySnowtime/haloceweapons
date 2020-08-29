// Created by Crowbar 0.62

$modelname "models/snowysnowtime/w_sg.mdl"

$bodygroup "studio"
{
	studio "w_halom90_w_haloshotgun.smd"
}

$include "w_halom90_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.013 0.491 -1.996

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
	{ "shotgun" }
	{ "sgdesert"  }
	{ "sggold" }
	{ "sggreatjourney"    }
	{ "sghuntersblood"   }
	{ "sgwoodlands"   }
}

$attachment "muzzle" "ValveBiped.Weapon_bone" 24.5 1 -1.25 rotate 0 0 -90
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_halom90_box.qci"

$include "w_halom90_bone.qci"

$include "w_halom90_animation.qci"

$include "w_halom90_collision.qci"
