#import <Foundation/Foundation.h>
#define kPath @"/var/mobile/Library/Preferences/the.overmind.replayprefs.plist"
#define prefinit NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath]
#define prefobject prefs objectForKey
/*
List of prefobjects
kPowerMine
kAirWalk
kNoClip
kNoDetect
kAdmin
kSteam
kSpeed
kInvincibility
kDamage
kPhase
kSurvival
kASupp
*/
%hook GameCommand
// ADMIN MODULE START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  }
  return %orig;
}
// ADMIN MODULE END
%end

%hook GameCommandSay
// ADMIN MODULE START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  }
  return %orig;
}
// ADMIN MODULE END
%end

%hook GameCommandPlayerDie
// ADMIN MODULE START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  }
  return %orig;
}
// ADMIN MODULE END
%end

%hook GameCommandDebug
// ADMIN MODULE START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  }
  return %orig;
}
// ADMIN MODULE END
%end

%hook Entity
// AIR WALK MODULE START
-(BOOL) grounded {
  prefinit;
  %orig;
  if ([[prefobject:@"kAirWalk"] boolValue]) {
    return YES;
  }
  return %orig;
}

-(void)setGrounded:(BOOL)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kAirWalk"] boolValue]) {
    arg1 = YES;
  }
  %orig;
}
// AIR WALK END
%end

%hook FlurryUtil
// NO DETECT MODULE START
+(BOOL) deviceIsJailbroken {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return NO;
  }
  return %orig;
}
// NO DETECT MODULE END
%end

%hook PFDevice
// NO DETECT MODULE START
-(bool) isJailbroken {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return NO;
  }
  return %orig;
}
// NO DETECT MODULE END
%end

%hook Player
// NO DETECT MODULE START
-(bool) karmaIsPoor {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return NO;
  }
  return %orig;
}

-(id) karma {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return nil;
  }
  return %orig;
}

-(void) setKarma:(id)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  %orig;
}
// NO DETECT MODULE END
// ADMIN MODULE START
-(void) setAwesomeMode:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    arg1 = YES;
    %orig;
  }
  %orig;
}

-(bool) admin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return YES;
  }
  return %orig;
}
// ADMIN MODULE END
// STEAM MODULE START
-(bool) hasSteam {
  prefinit;
  %orig;
  if ([[prefobject:@"kSteam"] boolValue]) {
    return YES;
  }
  return %orig;
}

-(double) steamCooldownDuration {
  prefinit;
  %orig;
  if ([[prefobject:@"kSteam"] boolValue]) {
    return 0;
  }
  return %orig;
}
// STEAM MODULE END
// SPEED MODULE START
-(float) miningSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) swimmingSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) climbingSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) runningSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) flyingSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}
// SPEED MODULE END
// DAMAGE MODULE START
-(float) aimSteadiness {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  }
  return %orig;
}

-(bool) damage:(int)arg1 amount:(float)arg2 attacker:(id)arg3 {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    arg2 = 99;
    return %orig;
  }
  return %orig;
}

-(float) gunEfficiency {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 20;
  }
  return %orig;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) canBeDamaged {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return NO;
  }
  return %orig;
}

-(void) environmentalDamage:(int)arg1 amount:(float)arg2 {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    arg2 = 0;
    %orig;
  }
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

-(bool) colliding {
  return NO;
}
// COLLISION MODULE END
// ANTI-SUPPRESSOR MODULE START
-(bool) suppressFlight {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    return NO;
  }
  return %orig;
}

-(bool) suppressGuns {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    return NO;
  }
  return %orig;
}

-(void) setSuppressGuns:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    arg1 = NO;
    %orig;
  }
  %orig;
}

-(bool) suppressMining {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    return NO;
  }
  return %orig;
}

-(void) setSuppressFlight:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    arg1 = NO;
    %orig;
  }
  %orig;
}

-(void) setSuppressMining:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    arg1 = NO;
    %orig;
  }
  %orig;
}
// ANTI-SUPPRESSOR MODULE END
%end

%hook WorldZone
// NOCLIP MODULE START
-(int) adminLoad {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoClip"] boolValue]) {
    return 1;
  }
  return %orig;
}
// NOCLIP MODULE END
// PHASE MODULE START
-(bool) isProtected {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return NO;
  }
  return %orig;
}
// PHASE MODULE END
%end

%hook BaseBlock
// PHASE MODULE START
-(bool) protectedByField {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return NO;
  }
  return %orig;
}
// PHASE MODULE END
%end

%hook MetaBlock
// PHASE MODULE START
-(bool) ownedByPlayerOrFollower {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return YES;
  }
  return %orig;
}

-(bool) ownedByPlayer {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return YES;
  }
  return %orig;
}
// PHASE MODULE END
// SURVIVAL MODULE START
-(float) temperature {
  prefinit;
  %orig;
  if ([[prefobject:@"kSurvival"] boolValue]) {
    return 0;
  }
  return %orig;
}

-(void) setTemperature:(float)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kSurvival"] boolValue]) {
    arg1 = 0;
    %orig;
  }
  %orig;
}
// SURVIVAL MODULE END
%end

%hook CCSpeed
// SPEED MODULE START
-(double) speed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}
// SPEED MODULE END
%end

%hook Item
// POWER MINE MODULE START
-(float) power {
  prefinit;
  %orig;
  if ([[prefobject:@"kPowerMine"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}
// POWER MINE MODULE END
// DAMAGE MODULE START
-(float) damageAmount {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  }
  return %orig;
}

-(float) fieldDamageAmount {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  }
  return %orig;
}

-(float) damageRange {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  }
  return %orig;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) invulnerable {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return YES;
  }
  return %orig;
}
// INVINCIBILITY MODULE END
%end

%hook EntityConfig
// INVINCIBILITY MODULE START
-(float) collisionDamageAmount {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return 0;
  }
  return %orig;
}
// INVINCIBILITY MODULE END
%end
