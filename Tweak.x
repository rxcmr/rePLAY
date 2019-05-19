#define PLIST_PATH @"/var/mobile/Library/Preferences/Root.plist"

inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%hook Player
// NO DETECT START
-(void) setKarma:(id)arg1 {
  if (GetPrefBool(@"kNoDetect")) {
    arg1 = nil;
    %orig;
  }
  %orig;
}

-(id) karma {
  if (GetPrefBool(@"kNoDetect")) {
      return nil;
  }
  %orig;
}

-(bool) karmaIsPoor {
  if (GetPrefBool(@"kNoDetect")) {
    return FALSE;
  }
  %orig;
}
// NO DETECT END
// ADMIN MODULE START
-(void) setAwesomeMode:(bool)arg1 {
  if (GetPrefBool(@"kAdmin")) {
    arg1 = TRUE;
    %orig;
  }
  %orig;
}

-(bool) admin {
  if (GetPrefBool(@"kAdmin")) {
      return TRUE;
  }
  %orig;
}
// ADMIN MODULE END
// STEAM MODULE START
-(bool) hasSteam {
  if (GetPrefBool(@"kSteam")) {
    return TRUE;
  }
  %orig;
}

-(double) steamCooldownDuration {
  if (GetPrefBool(@"kSteam")) {
    return 0;
  }
  %orig;
}
// STEAM MODULE END
// SPEED MODULE START
-(float) miningSpeed {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  %orig;
}

-(float) swimmingSpeed {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  %orig;
}

-(float) climbingSpeed {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  %orig;
}

-(float) runningSpeed {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  %orig;
}

-(float) flyingSpeed {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  %orig;
}
// SPEED MODULE END
// DAMAGE MODULE START
-(bool) damage:(int)arg1 amount:(float)arg2 attacker:(id)arg3 {
  if (GetPrefBool(@"kDamage")) {
    arg2 = 99;
    return %orig;
  }
  %orig;
}

-(float) gunEfficiency {
  if (GetPrefBool(@"kDamage")) {
    return 20;
  }
  %orig;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) canBeDamaged {
  if (GetPrefBool(@"kInvincibility")) {
    return FALSE;
  }
  %orig;
}

-(void) environmentalDamage:(int)arg1 amount:(float)arg2 {
  if (GetPrefBool(@"kInvincibility")) {
    arg2 = 0;
    %orig;
  }
  %orig;
}
// INVINCIBILITY MODULE END
// COLLISION MODULE START
-(void) didCollideWithEntity:(id)arg1 {
  if (GetPrefBool(@"kCollision")) {
    arg1 = nil;
    %orig;
  }
  %orig;
}

-(void) didCollideFeetWithEntity:(id)arg1 {
  if (GetPrefBool(@"kCollision")) {
    arg1 = nil;
    %orig;
  }
  %orig;
}

-(void) slowForEntity:(id)arg1 {
  if (GetPrefBool(@"kCollision")) {
    arg1 = nil;
    %orig;
  }
  %orig;
}
// COLLISION MODULE END
// ANTI-SUPPRESSOR MODULE START
-(bool) suppressFlight {
  if (GetPrefBool(@"kASupp")) {
      return FALSE;
  }
  %orig;
}

-(bool) suppressGuns {
  if (GetPrefBool(@"kASupp")) {
    return FALSE;
  }
  %orig;
}

-(void) setSuppressGuns:(bool)arg1 {
  if (GetPrefBool(@"kASupp")) {
    arg1 = FALSE;
    %orig;
  }
  %orig;
}

-(bool) suppressMining {
  if (GetPrefBool(@"kASupp")) {
    return FALSE;
  }
  %orig;
}

-(void) setSuppressFlight:(bool)arg1 {
  if (GetPrefBool(@"kASupp")) {
    arg1 = FALSE;
    %orig;
  }
  %orig;
}

-(void) setSuppressMining:(bool)arg1 {
  if (GetPrefBool(@"kASupp")) {
    arg1 = FALSE;
    %orig;
  }
  %orig;
}
// ANTI-SUPPRESSOR MODULE END
%end

%hook WorldZone
// PHASE MODULE START
-(bool) isProtected {
  if (GetPrefBool(@"kPhase")) {
    return FALSE;
  }
  %orig;
}
// PHASE MODULE END
%end

%hook BaseBlock
// PHASE MODULE START
-(bool) protectedByField {
  if (GetPrefBool(@"kPhase")) {
    return FALSE;
  }
  %orig;
}
// PHASE MODULE END
%end

%hook MetaBlock
// PHASE MODULE START
-(bool) ownedByPlayerOrFollower {
  if (GetPrefBool(@"kPhase")) {
    return TRUE;
  }
  %orig;
}

-(bool) ownedByPlayer {
  if (GetPrefBool(@"kPhase")) {
    return TRUE;
  }
  %orig;
}
// PHASE MODULE END
// SURVIVAL MODULE START
-(float) temperature {
  arg1 = 0;
  if (GetPrefBool(@"kSurvival")) {
    return 0;
  }
  %orig;
}

-(void) setTemperature:(float)arg1 {
  if (GetPrefBool(@"kSurvival")) {
    %orig;
  }
  %orig;
}
// SURVIVAL MODULE END
%end

%hook CCSpeed
// SPEED MODULE START
-(double) speed {
  if (GetPrefBool(@"kSpeed")) {
    return 1.9999999;
  }
  %orig;
}
// SPEED MODULE END
%end

%hook Item
// DAMAGE MODULE START
-(float) damageAmount {
  if (GetPrefBool(@"kDamage")) {
    return 1e+32;
  }
  %orig;
}

-(float) fieldDamageAmount {
  if (GetPrefBool(@"kDamage")) {
    return 1e+32;
  }
  %orig;
}

-(float) damageRange {
  if (GetPrefBool(@"kDamage")) {
    return 1e+32;
    %orig;
  }
  %orig;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) invulnerable {
  if (GetPrefBool(@"kInvincibility")) {
    return TRUE;
  }
  %orig;
}
// INVINCIBILITY MODULE END
%end

%hook EntityConfig
// INVINCIBILITY MODULE START
-(float) collisionDamageAmount {
  if (GetPrefBool(@"kInvincibility")) {
    return 0;
  }
  %orig;
}
// INVINCIBILITY MODULE END
%end

%hook FlurryUtil
// NO DETECT START
+(BOOL) deviceIsJailbroken {
  if (GetPrefBool(@"kNoDetect")) {
    return FALSE;
  }
  %orig;
}
// NO DETECT END
%end

%hook PFDevice
// NO DETECT START
-(bool) isJailbroken {
  if (GetPrefBool(@"kNoDetect")) {
    return FALSE;
  }
  %orig;
}
// NO DETECT END
%end
