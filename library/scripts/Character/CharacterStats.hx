// Character stats for CharacterTemplate
{

	spriteContent: self.getResource().getContent("charactertemplate"),
	//GENERIC STATS

	// Note: Currently scale adjustments invalidate SpecialAngle AUTOLINK_STRONGER and AUTOLINK_STRONGEST for values other than 1.0. 
	baseScaleX: 1.25,
	baseScaleY: 1.25, 
	weight: 85,
	gravity: 0.8,
	shortHopSpeed: 8.25,
	jumpSpeed: 15,
	//For multiple jumps define subsequent jump speeds within the brackets with commas in between (for example: [15.5, 13, 10]).
	doubleJumpSpeeds: [15.5],
	terminalVelocity: 9.25,
	fastFallSpeed: 13.75,
	friction: 0.97,
	walkSpeedInitial: 0,
	walkSpeedAcceleration: 0,
	walkSpeedCap: 8,
	dashSpeed: 0,
	runSpeedInitial: 0,
	runSpeedAcceleration: 0.55,
	runSpeedCap: 7.5,
	groundSpeedAcceleration: 0.3,
	groundSpeedCap: 11,
	aerialSpeedAcceleration: 0.45,
	aerialSpeedCap: 6.5,
	aerialFriction: 0.15,
	
	//ENVIRONMENTAL COLLISION BODY (ECB) STATS
	floorHeadPosition: 86,
	floorHipWidth: 29,
	floorHipXOffset: 0,
	floorHipYOffset: 0,
	floorFootPosition: 0,
	aerialHeadPosition: 86,
	aerialHipWidth: 29,
	aerialHipXOffset: 0,
	aerialHipYOffset: 0,
	aerialFootPosition: 25,

	//CAMERA BOX STATS
	cameraBoxOffsetX: 25,
	cameraBoxOffsetY: 75,
	cameraBoxWidth: 200,
	cameraBoxHeight: 250,

	//ROLL AND LEDGE JUMP STATS
	techRollSpeed: 15.5,
	techRollSpeedStartFrame: 7,
	techRollSpeedLength: 1,
	dodgeRollSpeed: 13,
	dodgeRollSpeedStartFrame: 3,
	dodgeRollSpeedLength: 1,
	getupRollSpeed: 15.5,
	getupRollSpeedStartFrame: 2,
	getupRollSpeedLength: 1,
	ledgeRollSpeed: 14,
	ledgeRollSpeedStartFrame: 1,
	ledgeRollSpeedLength: 1,
	ledgeJumpXSpeed: 2.5,
	ledgeJumpYSpeed: -10,

	//AIRDASH STATS
	airdashInitialSpeed: 11,
	airdashSpeedCap: 12.5,
	airdashAccelMultiplier: 0.4,
	airdashCancelSpeedConservation: 0.9,

	//SHIELD STATS
	//How many pixels behind 0,0 you'd like to extend shield coverage.
	shieldCrossupThreshold: 16,	
	//This dictates the *visual* size of the shield, which doesn't correlate to the actual shieldable area. HIGHLY recommend adjusting the "front" and "back" number sets together (for example, subtracting/adding to both "shieldBackWidth" and "shieldFrontWidth" by the same amount at the same time), it's currently really easy to lose track of the sizing and positioning if you aren't careful. 
	shieldFrontNineSliceContent: "global::vfx.vfx_shield_front",
	shieldFrontXOffset: 10.5,
	shieldFrontYOffset: 4,
	shieldFrontWidth: 53,
	shieldFrontHeight: 93,
	shieldBackNineSliceContent: "global::vfx.vfx_shield_back",
	shieldBackXOffset: 12.5,
	shieldBackYOffset: 4,
	shieldBackWidth: 49,
	shieldBackHeight: 93,

	//VOICE STATS
	//Populate the brackets with IDs in parenthesis separated by commas to add them to the voice bank.
	attackVoiceIds: ["attack1", "attack2", "attack3", "attack4", "attack5", "attack6", "attack7"],
	hurtLightVoiceIds: [],
	hurtMediumVoiceIds: ["hurt1", "hurt2", "hurt3", "hurt6", "hurt7"],
	hurtHeavyVoiceIds: ["hurt5"],
	koVoiceIds: ["hurt4"],
	//Percentage chance for the voice lines to play (1 being never, 0 being always).
	attackVoiceSilenceRate: 0.5,
	hurtLightSilenceRate: 1,
	hurtMediumSilenceRate: 0.5,
	hurtHeavySilenceRate: 0,
	koVoiceSilenceRate: 0,
}
