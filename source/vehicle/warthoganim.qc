$sequence "idle" {
	"anims\e.smd"
	rotate -90
}

$weightlist "wheel_fr_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 1
	 "frame steering wheel" 0
}

$weightlist "wheel_fl_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 1
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "wheel_rr_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 0
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 1
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$weightlist "wheel_rl_spin" {
	 "frame hull" 0
	 "frame gun mount base" 0
	 "frame chain" 0
	 "frame gun" 0
	 "frame barrels" 0
	 "frame left back suspension" 0
	 "frame left back engine" 0
	 "frame left back tire" 1
	 "frame left front suspension" 0
	 "frame left front engine" 0
	 "frame left front tire" 0
	 "frame right back suspension" 0
	 "frame right back engine" 0
	 "frame right back tire" 0
	 "frame right front suspension" 0
	 "frame right front engine" 0
	 "frame right front tire" 0
	 "frame steering wheel" 0
}

$animation neutral "anims\e.smd" frames 0 0

$poseparameter "vehicle_steer" -1 1
$poseparameter "wheel_fl_spin" -180 180 loop 360
$poseparameter "wheel_fr_spin" -180 180 loop 360
$poseparameter "wheel_rl_spin" -180 180 loop 360
$poseparameter "wheel_rr_spin" -180 180 loop 360
$poseparameter "wheel_fl_suspension" 0 2 loop 0
$poseparameter "wheel_fr_suspension" 0 2 loop 0
$poseparameter "wheel_rl_suspension" 0 2 loop 0
$poseparameter "wheel_rr_suspension" 0 2 loop 0

// steering
$weightlist front_wheels { "frame left front engine" 1.0 "frame right front engine" 1.0 "frame steering wheel" 1.0 }
$animation turn_left "anims\steering.smd" frame 0 0 subtract neutral 0 weightlist front_wheels
$animation turn_middle "anims\steering.smd" frame 1 1 subtract neutral 0 weightlist front_wheels
$animation turn_right "anims\steering.smd" frame 2 2 subtract neutral 0 weightlist front_wheels
$sequence turning { turn_left turn_middle turn_right blend vehicle_steer -1 1 } weightlist front_wheels delta autoplay


// front left
$weightlist wheel_fl { "frame left front engine" 1.0  "frame left front suspension" 1.0 "frame left front engine" 0.0 }
$animation wheel_fl_low "anims\suspension.smd" frame 0 0 subtract neutral 0 weightlist wheel_fl 
$animation wheel_fl_high "anims\suspension.smd" frame 2 2 subtract neutral 0 weightlist wheel_fl 
$sequence wheel_fl_suspension { wheel_fl_low wheel_fl_high blend "vehicle_wheel_fl_height" 0 1.0 } weightlist wheel_fl delta autoplay

$animation "wheel_fl_spin0" "anims\fl0.smd" {
	fps 30
	weightlist "wheel_fl_spin"
}
$animation "wheel_fl_spin120" "anims\fl120.smd" {
	fps 30
	weightlist "wheel_fl_spin"
}
$animation "wheel_fl_spin240" "anims\fl240.smd" {
	fps 30
	weightlist "wheel_fl_spin"
}
$sequence "wheel_fl_spin" {
	"wheel_fl_spin0"
	"wheel_fl_spin120"
	"wheel_fl_spin240"
	"wheel_fl_spin0"
	autoplay
	blend "wheel_fl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}



// front right
$weightlist wheel_fr { "frame right front engine" 1.0  "frame right front suspension" 1.0 "frame right front engine" 0.0 }
$animation wheel_fr_low "anims\suspension.smd" frame 0 0 subtract neutral 0 weightlist wheel_fr 
$animation wheel_fr_high "anims\suspension.smd" frame 2 2 subtract neutral 0 weightlist wheel_fr 
$sequence wheel_fr_suspension { wheel_fr_low wheel_fr_high blend "vehicle_wheel_fr_height" 0 1.0 } weightlist wheel_fr delta autoplay fadein 0.2 fadeout 0.2

$animation "wheel_fr_spin0" "anims\fr0.smd" {
	fps 30
	weightlist "wheel_fr_spin"
}
$animation "wheel_fr_spin120" "anims\fr120.smd" {
	fps 30
	weightlist "wheel_fr_spin"
}
$animation "wheel_fr_spin240" "anims\fr240.smd" {
	fps 30
	weightlist "wheel_fr_spin"
}
$sequence "wheel_fr_spin" {
	"wheel_fr_spin0"
	"wheel_fr_spin120"
	"wheel_fr_spin240"
	"wheel_fr_spin0"
	autoplay
	blend "wheel_fr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}


// rear left
$weightlist wheel_rl { "frame left back suspension" 1.0 "frame left back engine" 0.0 }
$animation wheel_rl_low "anims\suspension.smd" frame 0 0 subtract neutral 0 weightlist wheel_rl 
$animation wheel_rl_high "anims\suspension.smd" frame 2 2 subtract neutral 0 weightlist wheel_rl 
$sequence wheel_rl_suspension { wheel_rl_low wheel_rl_high blend "vehicle_wheel_rl_height" 0 1.0 } weightlist wheel_rl delta autoplay fadein 0.2 fadeout 0.2

$animation "wheel_bl_spin0" "anims\bl0.smd" {
	fps 30
	weightlist "wheel_rl_spin"
}
$animation "wheel_bl_spin120" "anims\bl120.smd" {
	fps 30
	weightlist "wheel_rl_spin"
}
$animation "wheel_bl_spin240" "anims\bl240.smd" {
	fps 30
	weightlist "wheel_rl_spin"
}
$sequence "wheel_bl_spin" {
	"wheel_bl_spin0"
	"wheel_bl_spin120"
	"wheel_bl_spin240"
	"wheel_bl_spin0"
	autoplay
	blend "wheel_rl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}


// rear right
$weightlist wheel_rr { "frame right back suspension" 1.0 "frame right back engine" 0.0 }
$animation wheel_rr_low "anims\suspension.smd" frame 0 0 subtract neutral 0 weightlist wheel_rr 
$animation wheel_rr_high "anims\suspension.smd" frame 2 2 subtract neutral 0 weightlist wheel_rr 
$sequence wheel_rr_suspension { wheel_rr_low wheel_rr_high blend "vehicle_wheel_rr_height" 0 1.0 } weightlist wheel_rr delta autoplay fadein 0.2 fadeout 0.2

$animation "wheel_br_spin0" "anims\br0.smd" {
	fps 30
	weightlist "wheel_rr_spin"
}
$animation "wheel_br_spin120" "anims\br120.smd" {
	fps 30
	weightlist "wheel_rr_spin"
}
$animation "wheel_br_spin240" "anims\br240.smd" {
	fps 30
	weightlist "wheel_rr_spin"
}
$sequence "wheel_br_spin" {
	"wheel_br_spin0"
	"wheel_br_spin120"
	"wheel_br_spin240"
	"wheel_br_spin0"
	autoplay
	blend "wheel_rr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
}