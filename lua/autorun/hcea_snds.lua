sound.Add(
{
    name = "energysword_swingimp",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"sil/sword_hit_char1.wav","sil/sword_hit_char2.wav","sil/sword_hit_char3.wav","sil/sword_hit_char4.wav","sil/sword_hit_char5.wav","sil/sword_hit_char6.wav","sil/sword_hit_char7.wav"}
})

sound.Add(
{
    name = "hce.energysword_m1cloth",
    channel = CHAN_STATIC,
    volume = 0.25,
    soundlevel = 80,
    sound = {"sil/enegy_sword_lunge_cloth1.wav","sil/enegy_sword_lunge_cloth2.wav","sil/enegy_sword_lunge_cloth3.wav"}
})

sound.Add(
{
    name = "br_lod",
    channel = CHAN_ITEM,
    volume = 0.25,
    level = 750,
	pitch = { 100, 105 },
    sound = {"sil/br_lod_far1.wav","sil/br_lod_far2.wav","sil/br_lod_far6.wav","sil/br_lod_far8.wav"}
})

sound.Add(
{
    name = "h3_pr_lod",
    channel = CHAN_STATIC,
    volume = 0.7,
    level = 750,
	pitch = { 100, 105 },
    sound = { "snow/weapons/plasma_rifle/plasma_rifle_lod_far/plasma_rifle_lod_far1.wav","snow/weapons/plasma_rifle/plasma_rifle_lod_far/plasma_rifle_lod_far3.wav","snow/weapons/plasma_rifle/plasma_rifle_lod_far/plasma_rifle_lod_far4.wav" },
})

sound.Add(
{
    name = "m6_lod",
    channel = CHAN_ITEM,
    volume = 0.25,
    level = 750,
	pitch = { 100, 105 },
    sound = {"snow/weapons/magnum/magnum_lod_far/magnum_lod_far1.wav","snow/weapons/magnum/magnum_lod_far/magnum_lod_far2.wav","snow/weapons/magnum/magnum_lod_far/magnum_lod_far3.wav"}
})

sound.Add(
{
    name = "ar_lod",
    channel = CHAN_ITEM,
    volume = 0.35,
    level = 850,
	pitch = { 95, 105 },
    sound = {"snow/weapons/assault_rifle/assault_rifle_lod_far/assault_rifle_lod_far1.wav","snow/weapons/assault_rifle/assault_rifle_lod_far/assault_rifle_lod_far2.wav","snow/weapons/assault_rifle/assault_rifle_lod_far/assault_rifle_lod_far3.wav"}
})

sound.Add(
{
    name = "rl_lod",
    channel = CHAN_STATIC,
    volume = 0.5,
    level = 750,
    sound = {"sil/rocket_launcher_lod_far1.wav","sil/rocket_launcher_lod_far2.wav","sil/rocket_launcher_lod_far3.wav"}
})

sound.Add(
{
    name = "sr_lodbetter",
    channel = CHAN_STATIC,
    volume = 0.15,
    level = 750,
	pitch = { 95, 105 },
    sound = {"sil/sr_lod1.wav","sil/sr_lod2.wav","sil/sr_lod3.wav","sil/sr_lod4.wav"}
})

sound.Add(
{
    name = "beam_lod",
    channel = CHAN_STATIC,
    volume = 0.15,
    level = 750,
	pitch = { 95, 105 },
    sound = {"snow/weapons/beam_rifle/beam_rifle_lod_far/beam_rifle_lod_far1.wav","snow/weapons/beam_rifle/beam_rifle_lod_far/beam_rifle_lod_far2.wav","snow/weapons/beam_rifle/beam_rifle_lod_far/beam_rifle_lod_far3.wav"}
})

sound.Add(
{
    name = "sg_lod",
    channel = CHAN_STATIC,
    volume = 0.15,
    level = 750,
    sound = {"sil/shotgun_lod_far1.wav","sil/shotgun_lod_far3.wav","sil/shotgun_lod_far4.wav"}
})

sound.Add(
{
    name = "car_lod",
    channel = CHAN_STATIC,
    volume = 0.35,
    level = 750,
    sound = {"sil/carbine_lod_far1.wav","sil/carbine_lod_far2.wav","sil/carbine_lod_far3.wav"}
})

sound.Add(
{
    name = "hce_ar_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_melee.wav"
})

sound.Add(
{
    name = "hce_sr_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 80,
    sound = "hce/sniper_shoot.wav"
})

sound.Add(
{
    name = "smg_soup",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"sil/smg1.wav","sil/smg2.wav","sil/smg3.wav","sil/smg4.wav","sil/smg5.wav"}
})

sound.Add(
{
    name = "hce_sr_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/sniper_reload.wav"
})

sound.Add(
{
    name = "shotgun_hce_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/shotgun_shellin_"..math.random(1,3)..""
})

sound.Add(
{
    name = "shotgun_hce_draw",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/shotgun_deploy.wav"
})

sound.Add(
{
    name = "shotgun_reloadin",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/shotgun_reloadstart.wav"
})

sound.Add(
{
    name = "shotgun_reloadout",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/shotgun_reload_fin.wav"
})

sound.Add(
{
    name = "shotgun_reloadlp",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hce/shotgun_shellin_1.wav","hce/shotgun_shellin_2.wav","hce/shotgun_shellin_3.wav"}
})

sound.Add(
{
    name = "shotgun_hce_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/shotgun_melee.wav"
})

sound.Add(
{
    name = "shotgun_hce_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/shotgunfire.wav"
})

sound.Add(
{
    name = "shotgun_h3_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = { "snow/weapons/shotgun/fire/shotgun1.wav", "snow/weapons/shotgun/fire/shotgun2.wav", "snow/weapons/shotgun/fire/shotgun3.wav" },
})

sound.Add(
{
    name = "fuelrod_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/fuelrodcannon_fire.wav"
})

sound.Add(
{
    name = "plasma_fire_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/plasma_fire_1.wav"
})

sound.Add(
{
    name = "plasma_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/prifle_overheat.wav"
})

sound.Add(
{
    name = "plasma_fire_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/plasma_fire_2.wav"
})

sound.Add(
{
    name = "plasma_fire_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/plasma_fire_3.wav"
})

sound.Add(
{
    name = "plasma_fire_4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/plasma_fire_4.wav"
})

sound.Add(
{
    name = "plasma_fire_5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/plasma_fire_5.wav"
})

sound.Add(
{
    name = "plasma_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/prifle_melee.wav"
})

sound.Add(
{
    name = "plasmap_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ppistol_melee.wav"
})

sound.Add(
{
    name = "plasmap_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ppistol_deploy.wav"
})

sound.Add(
{
    name = "needler_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/needler_melee.wav"
})

sound.Add(
{
    name = "needler_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/needler_reload.wav"
})

sound.Add(
{
    name = "needler_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hce/needler_fire1.wav","hce/needler_fire2.wav","hce/needler_fire3.wav"}
})

sound.Add(
{
    name = "needler_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/needler_fire2.wav"
})

sound.Add(
{
    name = "needler_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/needler_fire3.wav"
})



sound.Add(
{
    name = "rl_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/rocketlauncher_reload.wav"
})

sound.Add(
{
    name = "rl_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hce/rocketlauncher_shoot_1.wav","hce/rocketlauncher_shoot_1.wav"}
})

sound.Add(
{
    name = "rl_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/rocket_deploy.wav"
})

sound.Add(
{
    name = "rl_rockettrail",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/rocket_flyby_hce.wav"
})

sound.Add(
{
    name = "rocket_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/rocket_melee1.wav"
})

sound.Add(
{
    name = "rocket_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/rocket_melee2.wav"
})

sound.Add(
{
    name = "rocket_melee3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/rocket_melee3.wav"
})

sound.Add(
{
    name = "pistol_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/pistol_melee1.wav"
})

sound.Add(
{
    name = "pistol_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/pistol_melee2.wav"
})

sound.Add(
{
    name = "needler_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/needler_melee1.wav"
})

sound.Add(
{
    name = "needler_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/needler_melee2.wav"
})

sound.Add(
{
    name = "sniper_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/sniper_melee1.wav"
})

sound.Add(
{
    name = "sniper_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/sniper_melee2.wav"
})

sound.Add(
{
    name = "plasma_hit1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/plasma_hit1.wav"
})

sound.Add(
{
    name = "plasma_hit2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/plasma_hit2.wav"
})

sound.Add(
{
    name = "plasma_hit3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/plasma_hit3.wav"
})

sound.Add(
{
    name = "hce_reload_magnum",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/m6_reload.wav"
})

sound.Add(
{
    name = "hce_deploymagnum",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/m6_deploy.wav"
})

sound.Add(
{
    name = "h3_pr",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "snow/weapons/plasma_rifle/plas_rifle_fire.wav"
})

sound.Add(
{
    name = "hce_magnumfire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/m6_fire.wav"
})

sound.Add(
{
    name = "h3_magnumfire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = { "snow/weapons/magnum/magnum_fire/magnum_stereo1.wav","snow/weapons/magnum/magnum_fire/magnum_stereo2.wav","snow/weapons/magnum/magnum_fire/magnum_stereo3.wav","snow/weapons/magnum/magnum_fire/magnum_stereo4.wav" },
})

sound.Add(
{
    name = "hce_magnummelee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/pistol_melee.wav"
})

sound.Add(
{
    name = "hce_magnumfidget",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/m6_fidget.wav"
})

sound.Add(
{
    name = "ar_hce_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_reload.wav"
})

sound.Add(
{
    name = "ar_hce_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_deploy.wav"
})

sound.Add(
{
    name = "ar_hce_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_melee.wav"
})

sound.Add(
{
    name = "ar_hce_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hce/ar_fire1.wav","hce/ar_fire2.wav","hce/ar_fire3.wav","hce/ar_fire4.wav"}
})

sound.Add(
{
    name = "ar_h3_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"snow/weapons/assault_rifle/ar_fire/19103_b.wav","snow/weapons/assault_rifle/ar_fire/19203_b.wav","snow/weapons/assault_rifle/ar_fire/19204_b.wav"}
})

sound.Add(
{
    name = "ar_hce_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_fire2.wav"
})

sound.Add(
{
    name = "ar_hce_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_fire3.wav"
})

sound.Add(
{
    name = "ar_hce_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hce/ar_fire4.wav"
})

sound.Add(
{
    name = "slap1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slap1.wav"
})

sound.Add(
{
    name = "slap2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slap2.wav"
})

sound.Add(
{
    name = "slap3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slap3.wav"
})

sound.Add(
{
    name = "slap4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slap4.wav"
})

sound.Add(
{
    name = "slap5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slap5.wav"
})

sound.Add(
{
    name = "worldslap1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/worldslap1.wav"
})

sound.Add(
{
    name = "worldslap2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/worldslap2.wav"
})

sound.Add(
{
    name = "worldslap3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/worldslap3.wav"
})

sound.Add(
{
    name = "worldslap4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 120,
    sound = "shared/worldslap4.wav"
})

sound.Add(
{
    name = "br_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 120,
    sound = {"customedition/brfire1.wav","customedition/brfire2.wav","customedition/brfire4.wav","customedition/brfire5.wav","customedition/brfire6.wav","customedition/brfire7.wav"}
})

sound.Add(
{
    name = "br_first",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 120,
    sound = "customedition/brfire3.wav"
})

sound.Add(
{
    name = "br_deploy1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/brdeploy1.wav"
})

sound.Add(
{
    name = "br_deploy2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/brdeploy2.wav"
})

sound.Add(
{
    name = "br_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"customedition/brreload1.wav","customedition/brreload2.wav","customedition/brreload3.wav"}
})

sound.Add(
{
    name = "br_reload2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/brreload2.wav"
})

sound.Add(
{
    name = "br_reload3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/brreload3.wav"
})

sound.Add(
{
    name = "br_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"customedition/brmelee1.wav","customedition/brmelee2.wav"}
})

sound.Add(
{
    name = "br_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/brmelee2.wav"
})

sound.Add(
{
    name = "br_fidget",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/brfidget.wav"
})

sound.Add(
{
    name = "cmt_pistol",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cmt_pistolspecialsound.wav"
})

sound.Add(
{
    name = "cmtp_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cmtp_fire1.wav"
})

sound.Add(
{
    name = "cmtp_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cmtp_fire2.wav"
})

sound.Add(
{
    name = "cmtp_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cmtp_fire3.wav"
})

sound.Add(
{
    name = "cmtp_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cmt_pistolmelee.wav"
})

sound.Add(
{
    name = "sr_zoom",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "snow/weapons/sniper_rifle/zoom_in.wav"
})

sound.Add(
{
    name = "h3.zoomout",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "snow/weapons/sniper_rifle/zoom_out.wav"
})

sound.Add(
{
    name = "smg_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"snow/weapons/smg/mac_10_1a.wav","snow/weapons/smg/mac_10_2a.wav","snow/weapons/smg/mac_10_3a.wav"}
})

sound.Add(
{
    name = "smg_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/smg_fire2.wav"
})

sound.Add(
{
    name = "smg_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/smg_fire2.wav"
})

sound.Add(
{
    name = "slapanniv1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slapanniv1.wav"
})

sound.Add(
{
    name = "slapanniv2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slapanniv2.wav"
})

sound.Add(
{
    name = "slapanniv3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slapanniv3.wav"
})

sound.Add(
{
    name = "slapanniv4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slapanniv4.wav"
})

sound.Add(
{
    name = "slapanniv5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/slapanniv5.wav"
})

sound.Add(
{
    name = "worldslapanniv1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/wood1.wav"
})

sound.Add(
{
    name = "worldslapanniv2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/wood2.wav"
})

sound.Add(
{
    name = "worldslapanniv3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/wood3.wav"
})

sound.Add(
{
    name = "worldslapanniv4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/wood4.wav"
})

sound.Add(
{
    name = "sword_hit",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/sword_hit_env4.wav"
})

sound.Add(
{
    name = "ar_hcea_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/ar_reload.wav"
})

sound.Add(
{
    name = "ar_hcea_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/ar_deploy.wav"
})

sound.Add(
{
    name = "ar_hcea_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/ar_melee.wav"
})

sound.Add(
{
    name = "ar_hcea_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hcea/ar_fire1.wav","hcea/ar_fire2.wav","hcea/ar_fire3.wav","hcea/ar_fire4.wav",}
})

sound.Add(
{
    name = "sg_hcea_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hcea/shotgun_fire1.wav","hcea/shotgun_fire2.wav","hcea/shotgun_fire3.wav","hcea/shotgun_fire4.wav","hcea/shotgun_fire5.wav"}
})

sound.Add(
{
    name = "rl_hcea_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hcea/rocketlauncher_fire1.wav","hcea/rocketlauncher_fire2.wav","hcea/rocketlauncher_fire3.wav","hcea/rocketlauncher_fire4.wav","hcea/rocketlauncher_fire5.wav","hcea/rocketlauncher_fire6.wav","hcea/rocketlauncher_fire7.wav","hcea/rocketlauncher_fire8.wav"}
})

sound.Add(
{
    name = "hcea_magnumfire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hcea/pistolfire1.wav","hcea/pistolfire2.wav","hcea/pistolfire3.wav","hcea/pistolfire4.wav","hcea/pistolfire5.wav"}
})

sound.Add(
{
    name = "hcesup",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"sil/m6d_sil1.wav","sil/m6d_sil2.wav","sil/m6d_sil3.wav","sil/m6d_sil4.wav"}
})

sound.Add(
{
    name = "h3sup",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"snow/weapons/smg/smg_recon1.wav","snow/weapons/smg/smg_recon2.wav","snow/weapons/smg/smg_recon3.wav"}
})

sound.Add(
{
    name = "hcea_magnummelee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/pistolmelee.wav"
})

sound.Add(
{
    name = "hcea_annivpistolreload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/pistol_reload.wav"
})

sound.Add(
{
    name = "hcearl_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_reload.wav"
})

sound.Add(
{
    name = "hcearl_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_deploy.wav"
})

sound.Add(
{
    name = "hcearocket_melee_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocket_melee_1.wav"
})

sound.Add(
{
    name = "hcearocket_melee_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocket_melee_2.wav"
})

sound.Add(
{
    name = "hcearocket_melee_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocket_melee_3.wav"
})

sound.Add(
{
    name = "hceaneedler_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_melee1.wav"
})

sound.Add(
{
    name = "hceaneedler_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_melee2.wav"
})

sound.Add(
{
    name = "hceasniper_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_melee1.wav"
})

sound.Add(
{
    name = "hceasniper_melee2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_melee2.wav"
})

sound.Add(
{
    name = "hceaplasma_hit1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasma_hit1.wav"
})

sound.Add(
{
    name = "hceaplasma_hit2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasma_hit2.wav"
})

sound.Add(
{
    name = "hceaplasma_hit3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasma_hit3.wav"
})

sound.Add(
{
    name = "hceaplasma_hit4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasma_hit4.wav"
})

sound.Add(
{
    name = "hceaplasma_hit5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasma_hit5.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire1.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire2.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire3.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire4.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire5.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire6",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire6.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire7",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire7.wav"
})

sound.Add(
{
    name = "hcearocketlauncher_fire8",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocketlauncher_fire8.wav"
})

sound.Add(
{
    name = "rocket_hcea_pump1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocket_pump1.wav"
})

sound.Add(
{
    name = "rocket_hcea_pump2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocket_pump2.wav"
})

sound.Add(
{
    name = "rocket_hcea_pump3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/rocket_pump3.wav"
})

sound.Add(
{
    name = "shotgun_hcea_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_reload1.wav"
})

sound.Add(
{
    name = "shotgun_hcea_startreload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_startreload1.wav"
})

sound.Add(
{
    name = "shotgun_hcea_draw",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_deploy.wav"
})

sound.Add(
{
    name = "shotgun_hcea_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_melee.wav"
})

sound.Add(
{
    name = "shotgun_hcea_pump1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_pump1.wav"
})

sound.Add(
{
    name = "shotgun_hcea_pump2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_pump2.wav"
})

sound.Add(
{
    name = "shotgun_hcea_pump3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_pump3.wav"
})

sound.Add(
{
    name = "shotgun_hcea_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_fire1.wav"
})

sound.Add(
{
    name = "shotgun_hcea_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_fire2.wav"
})

sound.Add(
{
    name = "shotgun_hcea_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_fire3.wav"
})

sound.Add(
{
    name = "shotgun_hcea_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_fire4.wav"
})

sound.Add(
{
    name = "shotgun_hcea_fire5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/shotgun_fire5.wav"
})

sound.Add(
{
    name = "hceaplasmarifle_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_fire1.wav"
})

sound.Add(
{
    name = "hceaplasma_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_reload.wav"
})

sound.Add(
{
    name = "hceaplasmarifle_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_fire2.wav"
})

sound.Add(
{
    name = "hceaplasmarifle_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_fire3.wav"
})

sound.Add(
{
    name = "hceaplasmarifle_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_fire4.wav"
})

sound.Add(
{
    name = "hceaplasmarifle_fire5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_fire5.wav"
})

sound.Add(
{
    name = "hceaplasma_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmarifle_melee.wav"
})

sound.Add(
{
    name = "hceaplasmap_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/ppistol_melee.wav"
})

sound.Add(
{
    name = "hceaplasmap_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmapistol_deploy.wav"
})

sound.Add(
{
    name = "hceaplasmap_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmapistol_fire1.wav"
})

sound.Add(
{
    name = "hceaplasmap_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmapistol_fire2.wav"
})

sound.Add(
{
    name = "hceaplasmap_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmapistol_fire3.wav"
})

sound.Add(
{
    name = "hceaplasmap_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmapistol_fire4.wav"
})

sound.Add(
{
    name = "hceaplasmap_fire5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/plasmapistol_fire5.wav"
})

sound.Add(
{
    name = "hceaneedler_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_melee.wav"
})

sound.Add(
{
    name = "hceaneedler_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_reload.wav"
})

sound.Add(
{
    name = "hceaneedler_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_deploy.wav"
})

sound.Add(
{
    name = "hceaneedler_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_fire1.wav"
})

sound.Add(
{
    name = "hceaneedler_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_fire2.wav"
})

sound.Add(
{
    name = "hceaneedler_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_fire3.wav"
})

sound.Add(
{
    name = "hceaneedler_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_fire4.wav"
})

sound.Add(
{
    name = "hceaneedler_fire5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/needler_fire5.wav"
})

sound.Add(
{
    name = "hcea_sr_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_reload.wav"
})

sound.Add(
{
    name = "hcea_sr_draw",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_deploy.wav"
})

sound.Add(
{
    name = "hcea_sr_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_melee.wav"
})

sound.Add(
{
    name = "sr_hcea_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"hcea/sniper_fire1.wav","hcea/sniper_fire2.wav","hcea/sniper_fire3.wav","hcea/sniper_fire4.wav","hcea/sniper_fire5.wav"}
})

sound.Add(
{
    name = "h3_sr_fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = { "snow/weapons/sniper_rifle/sniper_fire_h3/sniper_fire_h3_1.wav","snow/weapons/sniper_rifle/sniper_fire_h3/sniper_fire_h3_2.wav","snow/weapons/sniper_rifle/sniper_fire_h3/sniper_fire_h3_3.wav","snow/weapons/sniper_rifle/sniper_fire_h3/sniper_fire_h3_4.wav" }
})

sound.Add(
{
    name = "hcea_sr_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_fire2.wav"
})

sound.Add(
{
    name = "hcea_sr_fire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_fire3.wav"
})

sound.Add(
{
    name = "hcea_sr_fire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_fire4.wav"
})

sound.Add(
{
    name = "hcea_sr_fire5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_fire5.wav"
})

sound.Add(
{
    name = "gravityhammer1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "gravity_hammer/hammer_hit1.wav"
})

sound.Add(
{
    name = "gravityhammer2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "gravity_hammer/hammer_hit2.wav"
})

sound.Add(
{
    name = "gravityhammer3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "gravity_hammer/hammer_hit3.wav"
})

sound.Add(
{
    name = "carbinereload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_reload.wav"
})

sound.Add(
{
    name = "energysword_swing",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"customedition/energy_sword_lunge_hum1.wav","customedition/energy_sword_lunge_hum2.wav","customedition/energy_sword_lunge_hum3wav","customedition/energy_sword_lunge_hum4.wav"}
})

sound.Add(
{
    name = "carbinefire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"customedition/carbinefire1.wav","customedition/carbinefire2.wav","customedition/carbinefire3.wav"}
})

sound.Add(
{
    name = "carbinefire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbinefire2.wav"
})

sound.Add(
{
    name = "carbinefire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbinefire3.wav"
})

sound.Add(
{
    name = "carbine_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_fp_melee_1_1.wav"
})

sound.Add(
{
    name = "carbine_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_fp_melee_1_2.wav"
})

sound.Add(
{
    name = "carbine_melee1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_fp_melee_1_3.wav"
})

sound.Add(
{
    name = "carbine_melee_swoosh1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_melee_swoosh.wav"
})

sound.Add(
{
    name = "carbine_melee_swoosh2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_melee_swoosh2.wav"
})

sound.Add(
{
    name = "carbine_melee_swoosh3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/carbine_melee_swoosh3.wav"
})

sound.Add(
{
    name = "beam_deploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/fp_beam_ready_1.wav"
})

sound.Add(
{
    name = "beam_fire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cov_snip_shot9.wav"
})

sound.Add(
{
    name = "beam_fire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/cov_snip_shot10.wav"
})

sound.Add(
{
    name = "beam_fpire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/first_person_fire1.wav"
})

sound.Add(
{
    name = "beam_fpire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/first_person_fire2.wav"
})

sound.Add(
{
    name = "beam_fpire3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/first_person_fire3.wav"
})

sound.Add(
{
    name = "beam_fpire4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/first_person_fire4.wav"
})

sound.Add(
{
    name = "beam_reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/beam_reload.wav"
})

sound.Add(
{
    name = "cmtprfire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/prfire1.wav","customedition/prfire2.wav","customedition/prfire3.wav"
})

sound.Add(
{
    name = "cmtprreload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/prreload.wav"
})

sound.Add(
{
    name = "hcea_sr_melee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "hcea/sniper_melee.wav"
})

sound.Add(
{
    name = "cmt_arfire1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/ar_fire1.wav"
})

sound.Add(
{
    name = "cmt_arfire2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/ar_fire2.wav"
})

sound.Add(
{
    name = "cmt_ardeploy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/ar_deploy.wav"
})

sound.Add(
{
    name = "cmt_armelee",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/ar_melee.wav"
})

sound.Add(
{
    name = "focus_start",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/focus_fire_start.wav"
})

sound.Add(
{
    name = "focus_loop",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "customedition/focus_loop.wav"
})

sound.Add(
{
    name = "plasmashake",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/plasmashake.wav"
})

sound.Add(
{
    name = "rocketshake",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/rocketshake.wav"
})

sound.Add(
{
    name = "weaponshake",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/weapon_shake.wav"
})

sound.Add(
{
    name = "pistolshake",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/pistolshake.wav"
})

sound.Add(
{
    name = "needleshake",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/needleshake.wav"
})

sound.Add(
{
    name = "plasmashakeanniv",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/plasmashakeanniv.wav"
})

sound.Add(
{
    name = "rocketshakeanniv",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/rocketshakeanniv.wav"
})

sound.Add(
{
    name = "weaponshakeanniv",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/weaponshakeanniv.wav"
})

sound.Add(
{
    name = "pistolshakeanniv",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/pistolshakeanniv.wav"
})


sound.Add(
{
    name = "needleshakeanniv",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "shared/needleshakeanniv.wav"
})