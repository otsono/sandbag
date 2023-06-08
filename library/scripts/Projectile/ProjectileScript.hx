// -------------------------------------------------
// -------------- BOBOMB ATTRIBUTES ----------------
// ---------- (Feel free to customize) -------------
// -------------------------------------------------

/** 
 * Variables and functions available to other objects.
*/
self.exports = {
	toSandbagToss: function() {
		// Code to do Sandbag toss
	}
}

/** Y Pixels above Sandbag for max height of bobomb throw. */
var BOBOMB_PEAK = -14; 


// -------------------------------------------------
// ----------------- Local Vars --------------------
// ------------- (Don't edit these) ----------------
// -------------------------------------------------
var life = self.makeInt(60 * 5);
var originalOwner = null;

/**
 * Adds a local state to the state machine. 
 * Note: This (for some reason) must be above the LState declaration.
 * 
 * @returns Int, to be used by LState object.
 */
function _prepLocalState(animation:String, ?index:Int=Math.NaN):Int{ // Note: The error here is not real
    if(!__hasInitLocalStateMachine){
        Common.initLocalStateMachine();
        __hasInitLocalStateMachine = true;
    }

    // Replace index if it is not supplied
    if(index != Math.NaN){
        index =  __localStatePrepIndex++;
    }

    Common.registerLocalState(index, animation);

    return index;
}
// LState prep variables 
var __hasInitLocalStateMachine = false;
var __localStatePrepIndex = -1;

// Customize me!!
var LState = {
    UNINITIALIZED: _prepLocalState("#n/a", -1),
	IDLE: _prepLocalState("idle"),
    HELD: _prepLocalState("idle"),
    THROWN: _prepLocalState("spin"),
    DROPPED: _prepLocalState("spin"),
	WALK: _prepLocalState("walk_in"),
	COUNTDOWN: _prepLocalState("countdown"),
    EXPLODE: _prepLocalState("explode")

    // etc.
};

// -------------------------------------------------
// ------------- CHARACTER FUNCTIONS ---------------
// -------------------------------------------------

function initialize(){
	self.addEventListener(EntityEvent.COLLIDE_FLOOR, onGroundHit, { persistent: true });
	self.addEventListener(GameObjectEvent.HIT_DEALT, onHit, { persistent: true });
	self.addEventListener(GameObjectEvent.HIT_RECEIVED, onHurt, { persistent: true });

	self.setCostumeIndex(self.getOwner().getCostumeIndex());
	
    // Set up horizontal reflection
	Common.enableReflectionListener({ mode: "X", replaceOwner: true });

	self.setState(PState.ACTIVE);
	Common.toLocalState(LState.IDLE);

	self.setXSpeed(X_SPEED);
	self.setYSpeed(Y_SPEED);
}

function onGroundHit(event) {
	self.removeEventListener(EntityEvent.COLLIDE_FLOOR, onGroundHit);
	self.removeEventListener(GameObjectEvent.HIT_DEALT, onHit);

	self.toState(PState.DESTROYING);
}

function onHit(event) {
	self.removeEventListener(EntityEvent.COLLIDE_FLOOR, onGroundHit);
	self.removeEventListener(GameObjectEvent.HIT_DEALT, onHit);

	self.toState(PState.DESTROYING);
}

function update() {
	if (self.inState(PState.ACTIVE)) {
		life.dec();
		if (life.get() <= 0) {
			self.removeEventListener(EntityEvent.COLLIDE_FLOOR, onGroundHit);
			self.removeEventListener(GameObjectEvent.HIT_DEALT, onHit);
			self.toState(PState.DESTROYING);
		}
	}
}

function onTeardown() {
	self.removeEventListener(EntityEvent.COLLIDE_FLOOR, onGroundHit);
	self.removeEventListener(GameObjectEvent.HIT_DEALT, onHit);
}