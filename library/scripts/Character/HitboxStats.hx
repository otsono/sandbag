// Hitbox stats
{
	//LIGHT ATTACKS
	jab1: {
		hitbox0: { damage: 11, angle: 35, baseKnockback: 75, knockbackGrowth: 90, hitstop: -1, selfHitstop: -1, limb:AttackLimb.HEAD },
		hitbox1: { damage: 11, angle: 35, baseKnockback: 75, knockbackGrowth: 90, hitstop: -1, selfHitstop: -1, limb:AttackLimb.HEAD }
	},
	dash_attack: {
		hitbox0: {damage: 11, angle: 45, baseKnockback: 55, knockbackGrowth: 80, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT }
	},	
	tilt_forward: {
		hitbox0: { damage: 9, knockbackGrowth: 65, baseKnockback: 65, angle: 35, limb:AttackLimb.FIST }
	},
	tilt_up: {
		hitbox0: { damage: 8, knockbackGrowth: 55, baseKnockback: 55, angle: 90, limb:AttackLimb.FIST },
	},
	tilt_down: {
		hitbox0: { damage: 7, angle: 65, baseKnockback: 65, knockbackGrowth: 65, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 7, angle: 65, baseKnockback: 65, knockbackGrowth: 65, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT}
	},

	//STRONG ATTACKS
	strong_forward_attack: {
		hitbox0: {damage: 13, angle: 40, baseKnockback: 68, knockbackGrowth: 75, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	strong_up_attack: {
		hitbox0: { damage: 10, knockbackGrowth: 70, baseKnockback: 60, hitstop: -1, hitstun: -1, angle: 80, limb:AttackLimb.FIST },
		hitbox1: { damage: 10, knockbackGrowth: 70, baseKnockback: 60, hitstop: -1, hitstun: -1, angle: 80, limb:AttackLimb.FIST },
		hitbox2: { damage: 12, knockbackGrowth: 80, baseKnockback: 65, hitstop: -1, selfHitstop:-1, hitstopOffset:3, selfHitstopOffset:3, angle: 90, limb:AttackLimb.FIST }
	},
	strong_down_attack: {
		hitbox0: {damage: 13, angle: 70, baseKnockback: 65, knockbackGrowth: 80, hitstop: -1, selfHitstop:-1, limb:AttackLimb.BODY}
	},

	//AERIAL ATTACKS
	aerial_neutral: {
		hitbox0: { damage: 10, angle: 361, baseKnockback: 40, knockbackGrowth: 65, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 10, angle: 361, baseKnockback: 40, knockbackGrowth: 65, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	aerial_forward: {
		hitbox0: { damage: 7, angle: 361, knockbackGrowth: 55, baseKnockback: 55, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT },
		hitbox1: { damage: 12, angle: 361, knockbackGrowth: 70, baseKnockback: 65, hitstop: -1, selfHitstop: -1, hitstopOffset:3, selfHitstopOffset:3, limb:AttackLimb.FOOT}
	},
	aerial_back: {
		hitbox0: { damage: 8, angle: 361, knockbackGrowth: 55, baseKnockback: 55, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT },
		hitbox1: { damage: 14, angle: 361, knockbackGrowth: 70, baseKnockback: 70, hitstop: -1, selfHitstop: -1, hitstopOffset:3, selfHitstopOffset:3, limb:AttackLimb.FOOT}
	},
	aerial_up: {
		hitbox0: { damage: 1, knockbackGrowth: 100, baseKnockback: 15, hitstop: 4, selfHitstop:3, angle: SpecialAngle.AUTOLINK_STRONGER, limb:AttackLimb.FIST, knockbackCap:75 }
	},
	aerial_down: {
		hitbox0: { damage: 9, angle: 280, baseKnockback: 45, knockbackGrowth: 40, hitstop:-1, selfHitstop:-1, hitstopOffset:3, selfHitstopOffset:3, limb:AttackLimb.FOOT },
		hitbox1: { damage: 7, angle: 361, baseKnockback: 50, knockbackGrowth: 45, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT }
	},

	//SPECIAL ATTACKS
	special_neutral: {
		hitbox0: {}
	},
	special_neutral_air: {
		hitbox0: {}
	},
	special_side: {
		hitbox0: { damage: 1, knockbackGrowth: 0, baseKnockback: 80, hitstop: 2, selfHitstop:2, hitstun: -1, hitstopNudgeMultiplier:0, directionalInfluence: false, reversibleAngle: false, angle: SpecialAngle.AUTOLINK_STRONGER, jabResetType:JabResetType.NEVER, limb:AttackLimb.FIST, knockbackCap:75 },
		hitbox1: { damage: 1, knockbackGrowth: 0, baseKnockback: 80, hitstop: 2, selfHitstop:2, hitstun: -1, hitstopNudgeMultiplier:0, directionalInfluence: false, reversibleAngle: false, angle: SpecialAngle.AUTOLINK_STRONGER, jabResetType:JabResetType.NEVER, limb:AttackLimb.FIST, knockbackCap:75 },
	},
	special_side_air: {
		hitbox0: { damage: 1, knockbackGrowth: 50, baseKnockback: 80, hitstop: 2, selfHitstop:2, hitstun: -1, hitstopNudgeMultiplier:0, directionalInfluence: false, reversibleAngle: false, angle: SpecialAngle.AUTOLINK_STRONGER, jabResetType:JabResetType.NEVER, limb:AttackLimb.FIST, knockbackCap:75 },
		hitbox1: { damage: 1, knockbackGrowth: 50, baseKnockback: 80, hitstop: 2, selfHitstop:2, hitstun: -1, hitstopNudgeMultiplier:0, directionalInfluence: false, reversibleAngle: false, angle: SpecialAngle.AUTOLINK_STRONGER, jabResetType:JabResetType.NEVER, limb:AttackLimb.FIST, knockbackCap:75 },
	},
	special_up: {
		hitbox0: {damage: 2, knockbackGrowth: 100, baseKnockback: 140, hitstop: 2, selfHitstop: 2, hitstun: -1, reversibleAngle: false, angle: SpecialAngle.AUTOLINK_STRONGER, limb:AttackLimb.FIST, knockbackCap:75}
	}, 
	special_up_air: {
		hitbox0: {damage: 2, knockbackGrowth: 100, baseKnockback: 140, hitstop: 2, selfHitstop: 2, hitstun: -1, reversibleAngle: false, angle: SpecialAngle.AUTOLINK_STRONGER, limb:AttackLimb.FIST, knockbackCap:75}
	}, 
	special_down: {
		hitbox0: { damage:4, angle:90, baseKnockback: 85, knockbackGrowth: 30, hitstop: -1, selfHitstop: -1}
	}, 
	special_down_air: {
		hitbox0: { damage:4, angle:90, baseKnockback: 85, knockbackGrowth: 30, hitstop: -1, selfHitstop: -1}
	},

	//THROWS
	throw_down: {
		hitbox0: { damage: 7, angle: 45, baseKnockback: 55, knockbackGrowth: 65, hitstop: -1, selfHitstop:-1, reversibleAngle: false, limb:AttackLimb.BODY }
	},
	throw_up: {
		hitbox0: { damage: 8, angle: 95, baseKnockback: 55, knockbackGrowth: 65, hitstop: -1, selfHitstop:-1, reversibleAngle: false, limb:AttackLimb.HEAD }
	},
	throw_forward: {
		hitbox0: { damage: 8, angle: 45, baseKnockback: 55, knockbackGrowth: 45, hitstop:0, selfHitstop:0, reversibleAngle: false, hitSoundOverride: "#n/a", hitEffectOverride: "#n/a" }
	},
	throw_back: { 
		hitbox0: { damage: 8, angle: 145, baseKnockback: 55, knockbackGrowth: 45, hitstop:0, selfHitstop:0, reversibleAngle: false, hitSoundOverride: "#n/a", hitEffectOverride: "#n/a" }
	},
	
	//MISC ATTACKS
	ledge_attack: {
		hitbox0: { damage: 9, angle: 361, baseKnockback: 40, knockbackGrowth: 60, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 9, angle: 361, baseKnockback: 40, knockbackGrowth: 60, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	crash_attack: {
		hitbox0: { damage: 6, angle: 145, baseKnockback: 70, knockbackGrowth: 25, hitstop: -1, selfHitstop:-1, reversibleAngle: false, limb:AttackLimb.FOOT }
	},
	emote: {
		hitbox0: {}
	}

	//UNUSED ATTACKS (Example attacks that are currently not used. You can rename the HitboxStats and the animation if you'd like to replace an existing animation.)
	/*
	aerial_neutral (multi-hit): {
		hitbox0: { damage: 1, angle: 40, baseKnockback: 60, knockbackGrowth: 0, hitstop: -1, selfHitstop: -1, reversibleAngle: false, limb:AttackLimb.FOOT },
		hitbox1: { damage: 1, angle: 40, baseKnockback: 60, knockbackGrowth: 0, hitstop: -1, selfHitstop: -1, reversibleAngle: false, limb:AttackLimb.FOOT}
	},
	*/
}
