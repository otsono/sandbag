// -------------------------------------------------
// ------------- SANDBAG ATTRIBUTES ----------------
// ---------- (Feel free to customize) -------------
// -------------------------------------------------
var WD_TO_WALK_MOMENTUM_CONSERVATION = 0.5;
var NSPEC_PROJ_X_OFFSET = 40;
var NSPEC_PROJ_Y_OFFSET = -50;
var NEUTRAL_SPECIAL_COOLDOWN = 60;

// -------------------------------------------------
// ----------------- Local Vars --------------------
// ------------- (Don't edit these) ----------------
// -------------------------------------------------
var inSimulatedAir = self.makeBool(false);
var neutralSpecialProjectile = self.makeObject(null); // Tracks active Neutral Special projectile (in case we need to handle any special cases)
var lastDisabledNSpecStatusEffect = self.makeObject(null);
var downSpecialLoopCheckTimer = self.makeInt(-1);


// -------------------------------------------------
// ------------- CHARACTER FUNCTIONS ---------------
// -------------------------------------------------

function initialize(){
    self.addEventListener(GameObjectEvent.LINK_FRAMES, handleLinkFrames, {persistent:true});
    self.addEventListener(EntityEvent.STATE_CHANGE, function() {
        if(self.getAnimation() != "skid" && self.getAnimation() != "walk_out"){
            return;
        }

        inSimulatedAir.set(false);
    }, {persistent:true});
}

function update(){
    
}

// CState-based handling for LINK_FRAMES
// needed to ensure important code that would be skipped during the transition is still executed
function handleLinkFrames(e){
	if(self.inState(CState.SPECIAL_SIDE)){
		if(self.getCurrentFrame() >= 14){
			self.updateAnimationStats({bodyStatus:BodyStatus.NONE});
		}
	} else if(self.inState(CState.SPECIAL_DOWN)){
        specialDown_resetTimer();
        downSpecialLoopCheckTimer.set(self.addTimer(1, -1, specialDown_checkLoop));    
    }
}

function onTeardown() {
	
}

// -------------------------------------------------
// --------------- LOCAL FUNCTIONS -----------------
// -------------------------------------------------

// -----------NEUTRAL SPECIAL-----------

//projectile
function fireNSpecialProjectile(){
    neutralSpecialProjectile.set(match.createProjectile(self.getResource().getContent("characterTemplateNspecProjectile"), self));
    neutralSpecialProjectile.get().setX(self.getX() + self.flipX(NSPEC_PROJ_X_OFFSET));
    neutralSpecialProjectile.get().setY(self.getY() + NSPEC_PROJ_Y_OFFSET);
}

/**cooldown timer**/
function startNeutralSpecialCooldown(){
    disableNeutralSpecial();
    self.addTimer(NEUTRAL_SPECIAL_COOLDOWN, 1, enableNeutralSpecial, {persistent:true});
}

/**cooldown timer**/
function disableNeutralSpecial(){
    if (lastDisabledNSpecStatusEffect.get() != null) {
        self.removeStatusEffect(StatusEffectType.DISABLE_ACTION, lastDisabledNSpecStatusEffect.get().id);
    }
    lastDisabledNSpecStatusEffect.set(self.addStatusEffect(StatusEffectType.DISABLE_ACTION, CharacterActions.SPECIAL_NEUTRAL));
}

/**cooldown timer**/
function enableNeutralSpecial(){
    if (lastDisabledNSpecStatusEffect.get() != null) {
        self.removeStatusEffect(StatusEffectType.DISABLE_ACTION, lastDisabledNSpecStatusEffect.get().id);
        lastDisabledNSpecStatusEffect.set(null);
    }
}

//-----------SIDE SPECIAL-----------

/**shield hit slowdown**/
function sideSpecialShieldHit(){
	self.setXSpeed(-4);
}

/**jump cancel hit confirm**/
function sideSpecialHit(){
	self.updateAnimationStats({allowJump: true});
}

//-----------DOWN SPECIAL-----------

function specialDown_gotoEndlag(){
    if(self.isOnFloor()){
        self.playAnimation("special_down_endlag");
    } else {
        self.playAnimation("special_down_air_endlag");
    }
}

function specialDown_resetTimer(){
    self.removeTimer(downSpecialLoopCheckTimer.get());
    downSpecialLoopCheckTimer.set(-1);
}

function specialDown_checkLoop(){
    var heldControls:ControlsObject = self.getHeldControls();

    if(!heldControls.SPECIAL){
        specialDown_resetTimer();
        specialDown_gotoEndlag();
    }
}

function specialDown_gotoLoop(){
    if(self.isOnFloor()){
        self.playAnimation("special_down_loop");
    } else {
        self.playAnimation("special_down_air_loop");
    }

    //failsafe
    specialDown_resetTimer();

    // start checking inputs
    downSpecialLoopCheckTimer.set(self.addTimer(1, -1, specialDown_checkLoop));    
}

// -------------------------------------------------
// --------------- LOCAL FUNCTIONS -----------------
// -------------------------------------------------
/**
 * Compares the return value from a function against a list.
 */
function isAny(valueFromFunction:any, returnVals:Array):Bool{
    for (value in returnVals){        
        if(valueFromFunction == value){
            return true;
        }
    }

    return false;
}