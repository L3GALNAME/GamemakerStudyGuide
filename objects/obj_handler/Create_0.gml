/// @desc Var init

// Startup
draw_set_font(fnt_notoSansJP);
room = rm_splash;

global.animCurves = {
	LINEAR : animcurve_get_channel(anim_curves, "linear"),
	FASTSLOW : animcurve_get_channel(anim_curves, "fastSlow"),
	SLOWFAST : animcurve_get_channel(anim_curves, "slowFast"),
	ELASTIC : animcurve_get_channel(anim_curves, "elastic"),
	ELASTICSUBTLE : animcurve_get_channel(anim_curves, "elasticSubtle"),
	EASEIN : animcurve_get_channel(anim_curves, "easeIn"),
	EASEOUT : animcurve_get_channel(anim_curves, "easeOut")
};

//sprite_index = spr_pixel;
//image_xscale = 60; image_yscale = 60;
//image_blend = c_grey;

//input_text  = "";
//focused = false;
