// Animation stats for CharacterTemplate
// Many values are automatically set by our Common class
// Values assigned in this file will override those values
{
	//MOTIONS
	stand: {},
	stand_turn: {},
	walk_in: {},
	walk: {},
	walk_out: {},
	dash: {},
	run: {},
	run_turn: {},
	skid: {},
	jump_squat: {},
	jump_in: {},
	jump_midair: {},
	jump_out: {},
	fall_loop: {},
	fall_special: {},
	land_light: {},
	land_heavy: {},
	crouch_in: {},
	crouch_loop: {},
	crouch_out: {},

	//AIRDASHES
	airdash_up: {},
	airdash_down: {},
	airdash_forward: {},
	airdash_back: {},
	airdash_forward_up: {},
	airdash_forward_down: {},
	airdash_back_up: {},
	airdash_back_down: {},

	//DEFENSE
	shield_in: {},
	shield_loop: {},
	shield_hurt: {},
	shield_out: {}, 
	parry_in: {},
	parry_success: {},
	parry_fail: {},
	roll: {},
	spot_dodge: {},

	//ASSIST CALL
	assist_call: {},
	assist_call_air: {},

	//LIGHT ATTACKS
	jab1: {},
	jab2: {},
	jab3: {},
	dash_attack: {slideOff:true},
	tilt_forward: {},
	tilt_up: {},
	tilt_down: {slideOff:true},

	//STRONG ATTACKS
	strong_forward_in: {},
	strong_forward_charge: {},
	strong_forward_attack: {},
	strong_up_in: {},
	strong_up_charge: {},
	strong_up_attack: {},
	strong_down_in: {},
	strong_down_charge: {},
	strong_down_attack: {},

	//AERIAL ATTACKS
	aerial_neutral: {landAnimation:"aerial_neutral_land"},
	aerial_forward: {landAnimation:"aerial_forward_land"},
	aerial_back: {landAnimation:"aerial_back_land"},
	aerial_up: {landAnimation:"aerial_up_land"},
	aerial_down: {landAnimation:"aerial_down_land", xSpeedConservation: 0.5, ySpeedConservation: 0.5},

	//AERIAL ATTACK LANDING
	aerial_neutral_land: {},
	aerial_forward_land: {},
	aerial_back_land: {},
	aerial_up_land: {},
	aerial_down_land: {xSpeedConservation: 0},

	//SPECIAL ATTACKS
	special_neutral: {},
	special_neutral_air: {},
	special_up: {leaveGroundCancel:false, xSpeedConservation:0.5, ySpeedConservation:0.5, allowMovement: true, groundSpeedCap: 5.5, aerialSpeedCap: 3.25, nextState:CState.FALL_SPECIAL}, 
	special_up_air: {leaveGroundCancel:false, xSpeedConservation:0.5, ySpeedConservation:0.5, groundSpeedCap: 5.5, aerialSpeedCap: 3.25, nextState:CState.FALL_SPECIAL, landType:LandType.TOUCH}, 
	special_side: {allowFastFall: false, allowTurnOnFirstFrame: true, leaveGroundCancel:false, landType:LandType.TOUCH, landAnimation: "land_heavy", singleUse:true},
	special_side_air: {allowFastFall: false, allowTurnOnFirstFrame: true, leaveGroundCancel:false, landType:LandType.TOUCH, landAnimation: "land_heavy", singleUse:true}, 
	special_down: {allowFastFall:false, allowTurnOnFirstFrame: true, leaveGroundCancel:false, xSpeedConservation:0, ySpeedConservation:0, gravityMultiplier:0.75}, 
	special_down_loop: {endType:AnimationEndType.LOOP, allowJump:true},
	special_down_endlag: {allowJump:true},
	special_down_air: {allowFastFall:false, allowTurnOnFirstFrame: true, leaveGroundCancel:false, xSpeedConservation:0, ySpeedConservation:0, gravityMultiplier:0.75, landType:LandType.LINK_FRAMES, landAnimation:"special_down"},
	special_down_air_loop: {endType:AnimationEndType.LOOP, allowJump:true, landType:LandType.LINK_FRAMES, landAnimation:"special_down_loop"},
	special_down_air_endlag: {allowJump:true, landType:LandType.LINK_FRAMES, landAnimation:"special_down"},

	//THROWS
	grab: {},
	grab_hold: {},
	throw_forward: {},
	throw_back: {},
	throw_up: {},
	throw_down: {},

	//HURT ANIMATIONS
	hurt_light_low: {},
	hurt_light_middle: {},
	hurt_light_high: {},
	hurt_medium: {},
	hurt_heavy: {},
	hurt_thrown: {},
	tumble: {},

	//CRASH
	crash_bounce: {},
	crash_loop: {},
	crash_get_up: {},
	crash_attack: {},
	crash_roll: {},

	//LEDGE
	ledge_in: {},
	ledge_loop: {},
	ledge_roll: {},
	ledge_climb: {},
	ledge_attack: {},

	//MISC
	revival: {},
	emote: {}
}
