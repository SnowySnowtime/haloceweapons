// Created by Crowbar 0.62

$modelname "models/snowysnowtime/w_ar.mdl"

$bodygroup "studio"
{
	studio "w_haloassaultrifle_w_ma5b.smd"
}

$include "w_haloassaultrifle_lod.qci"

$surfaceprop "weapon"

$contents "solid"

$illumposition -0.491 -0.013 -1.996

$cdmaterials "snowysnowtime/2k/vmt"

$texturegroup "skinfamilies"
{
    { "ar" }
    { "arcorrosion"  }
    { "argold" }
    { "argreatjourney"    }
    { "arluckyshot"   }
    { "arsquirt"   }
    { "ardesert"   }
}

$attachment "muzzle" "ValveBiped.Weapon_bone" 17.5 0.6 -4.45 rotate 0 0 -90
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

// $include "w_haloassaultrifle_box.qci"

$include "w_haloassaultrifle_bone.qci"

$include "w_haloassaultrifle_animation.qci"

$include "w_haloassaultrifle_collision.qci"
