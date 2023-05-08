// Custom AI for CharacterTemplate

// How far horizontally away from the ledge we need to be to permit risking side special usage
var RECOVERY_SSPEC_X_THRESHOLD = 200;

// How far above ledge we need to be at minimum to permit risking side special usage
var RECOVERY_SSPEC_Y_THRESHOLD = 150;

// How far below a ledge we need to be at minimum to do up special recovery (positive means below ledge)
var RECOVERY_USPEC_Y_THRESHOLD = 40; 

// Other vars
var tempPoint1 = new Point();
var tempPoint2 = new Point();
var sideSpecialRecoveryUsed = self.makeBool(false);

function initialize() {
}

function update() {
	if (self.isRecovering()) {
		// Do recovery logic
		checkRecovery();
	} else {
		// Reset recovery vars
		sideSpecialRecoveryUsed.set(false);
	}
}

function onTeardown() {
}

function checkRecovery() {
	// Get the entity the AI wants to target (could be anything from a foe, graph node, etc.)
	var target:Entity = self.getImmediateTarget();
	// Make sure current target is a graph node (indicating a floor), we're falling, and not currently attacking or hurt/helpless
	if (target == null || target.getType() != EntityType.AI_GRAPH_NODE || character.inStateGroup(CStateGroup.ATTACK) || character.inHurtState() || character.inState(CState.FALL_SPECIAL) || character.inState(CState.TUMBLE) || character.getYSpeed() < 0 || self.hasInputOverrides()) {
		return;
	}
	// Choose between up special or side special depending on circumstance
	if (character.getY() >= target.getY() + RECOVERY_USPEC_Y_THRESHOLD && character.getDoubleJumpCount() > 0) {
		upSpecialRecovery(target);
	} else if (character.getY() < target.getY() + RECOVERY_SSPEC_Y_THRESHOLD && !sideSpecialRecoveryUsed.get()) {
		sideSpecialRecovery(target);
	}
}

function upSpecialRecovery(target:Entity) {
	// Temporarily override engine AI inputs with our own for up special
	self.addInputOverrides([
		// Release currently held buttons
		0, 1,
		// Hold up special buttons
		Buttons.SPECIAL | Buttons.UP, 1,
		// Release
		0, 1
	]);
}

function sideSpecialRecovery(target:Entity) {
	// Determine length to hold side special based on X distance from ledge
	var xDistance = character.getX() - target.getX();
	var xDistanceAbs = Math.abs(xDistance);

	if (xDistanceAbs < RECOVERY_SSPEC_X_THRESHOLD) {
		// Don't bother using SSPEC if this close to ledge
		return;
	}
	
	// Remember that we already attempted side special once
	sideSpecialRecoveryUsed.set(true);

	// Temporarily override engine AI inputs with our own for side special
	self.addInputOverrides([
		// Release currently held buttons
		0, 1,
		// Press side special buttons
		Buttons.SPECIAL | ((xDistance > 0) ? Buttons.LEFT : Buttons.RIGHT), 1,
		// Release
		0, 1
	]);
}