#import <Foundation/Foundation.h>
#define kPath @"/var/mobile/Library/Preferences/the.overmind.rePLAY.plist"

%hook Player
// ADMIN MODULE START
-(void) setAwesomeMode:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFiles:kPath];
  if ([[prefs objectForKey:@"kAdmin"] boolValue]) {
    arg1 = TRUE;
    %orig;
  }
  %orig;
}

-(bool) admin {
  return TRUE;
}
// ADMIN MODULE END
// STEAM MODULE START
-(bool) hasSteam {
  return TRUE;
}

-(double) steamCooldownDuration {
  return 0;
}
// STEAM MODULE END
// SPEED MODULE START
-(float) miningSpeed {
  return 1.9999999;
}

-(float) swimmingSpeed {
  return 1.9999999;
}

-(float) climbingSpeed {
  return 1.9999999;
}

-(float) runningSpeed {
  return 1.9999999;
}

-(float) flyingSpeed {
  return 1.9999999;
}
// SPEED MODULE END
// DAMAGE MODULE START
-(bool) damage:(int)arg1 amount:(float)arg2 attacker:(id)arg3 {
  arg2 = 99;
  return %orig;
}

-(float) gunEfficiency {
  return 20;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) canBeDamaged {
  return FALSE;
}

-(void) environmentalDamage:(int)arg1 amount:(float)arg2 {
  arg2 = 0;
  %orig;
}
// INVINCIBILITY MODULE END
// COLLISION MODULE START
-(void) didCollideWithEntity:(id)arg1 {
  arg1 = nil;
  %orig;
}

-(void) didCollideFeetWithEntity:(id)arg1 {
  arg1 = nil;
  %orig;
}

-(void) slowForEntity:(id)arg1 {
  arg1 = nil;
  %orig;
}
// COLLISION MODULE START
// ANTI-SUPPRESSOR MODULE START
-(bool) suppressFlight {
  return FALSE;
}

-(bool) suppressGuns {
  return FALSE;
}

-(void) setSuppressGuns:(bool)arg1 {
  arg1 = FALSE;
  %orig;
}

-(bool) suppressMining {
  return FALSE;
}

-(void) setSuppressFlight:(bool)arg1 {
  arg1 = FALSE;
  %orig;
}

-(void) setSuppressMining:(bool)arg1 {
  arg1 = FALSE;
  %orig;
}
// ANTI-SUPPRESSOR MODULE END
%end

%hook WorldZone
// PHASE MODULE START
-(bool) isProtected {
  return FALSE;
}
// PHASE MODULE END
%end

%hook BaseBlock
// PHASE MODULE START
-(bool) protectedByField {
  return FALSE;
}
// PHASE MODULE END
%end

%hook MetaBlock
// PHASE MODULE START
-(bool) ownedByPlayerOrFollower {
  return TRUE;
}

-(bool) ownedByPlayer {
  return TRUE;
}
// PHASE MODULE END
// SURVIVAL MODULE START
-(float) temperature {
  return 0;
}

-(void) setTemperature:(float)arg1 {
  arg1 = 0;
  %orig;
}
// SURVIVAL MODULE END
%end

%hook CCSpeed
// SPEED MODULE START
-(double) speed {
  return 1.9999999;
}
// SPEED MODULE END
%end

%hook Item
// DAMAGE MODULE START
-(float) damageAmount {
  return 1e+32;
}

-(float) fieldDamageAmount {
  return 1e+32;
}

-(float) damageRange {
  return 1e+32;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) invulnerable {
  return TRUE;
}
// INVINCIBILITY MODULE END
%end

%hook EntityConfig
// INVINCIBILITY MODULE START
-(float) collisionDamageAmount {
  return 0;
}
// INVINCIBILITY MODULE END
%end
