#import <Foundation/Foundation.h>
#define kPath @"/var/mobile/Library/Preferences/the.overmind.replayprefs.plist"
#define prefinit NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath]
#define prefobject prefs objectForKey
/*
List of prefobjects
kZoom
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
  } else { return %orig; }
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
  } else { return %orig; }
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
  } else { return %orig; }
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
  } else { return %orig; }
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
  } else { return %orig; }
}

-(void)setGrounded:(BOOL)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kAirWalk"] boolValue]) {
    arg1 = YES;
  } else { %orig; };
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
  } else { return %orig; }
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
  } else { return %orig; }
}
// NO DETECT MODULE END
%end

%hook Player
// ZOOM MODULE START
-(float) zoomModifier {
  prefinit;
  %orig;
  if ([[prefobject:@"kZoom"] boolValue]) {
    float zoomValue = [[prefobject:@"kZoomSlider"] floatValue];
    return zoomValue;
  } else { return %orig; }
}
// ZOOM MODULE END
// NO DETECT MODULE START
-(bool) karmaIsPoor {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return NO;
  } else { return %orig; }
}

-(id) karma {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return nil;
  } else { return %orig; }
}

-(void) setKarma:(id)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    arg1 = nil;
    %orig;
 } else { %orig; }
}
// NO DETECT MODULE END
// ADMIN MODULE START
-(void) setAwesomeMode:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    arg1 = YES;
    %orig;
  } else { %orig; }
}

-(bool) admin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return YES;
  } else { return %orig; }
}
// ADMIN MODULE END
// STEAM MODULE START
-(bool) hasSteam {
  prefinit;
  %orig;
  if ([[prefobject:@"kSteam"] boolValue]) {
    return YES;
  } else { return %orig; }
}

-(double) steamCooldownDuration {
  prefinit;
  %orig;
  if ([[prefobject:@"kSteam"] boolValue]) {
    return 0;
  } else { return %orig; }
}
// STEAM MODULE END
// SPEED MODULE START
-(float) miningSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  } else { return %orig; }
}

-(float) swimmingSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  } else { return %orig; }
}

-(float) climbingSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  } else { return %orig; };
}

-(float) runningSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  } else { return %orig; }
}

-(float) flyingSpeed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  } else { return %orig; };
}
// SPEED MODULE END
// DAMAGE MODULE START
-(float) aimSteadiness {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  } else { return %orig; };
}

-(bool) damage:(int)arg1 amount:(float)arg2 attacker:(id)arg3 {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    arg2 = 99;
    return %orig;
  } else { return %orig; }
}

-(float) gunEfficiency {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 20;
  } else { return %orig; }
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) canBeDamaged {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return NO;
  } else { return %orig; }
}

-(void) environmentalDamage:(int)arg1 amount:(float)arg2 {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    arg2 = 0;
    %orig;
  } else { %orig; }
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
  } else { return %orig; }
}

-(bool) suppressGuns {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    return NO;
 } else { return %orig; }
}

-(void) setSuppressGuns:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    arg1 = NO;
    %orig;
 } else { %orig; }
}

-(bool) suppressMining {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    return NO;
  } else { return %orig; }
}

-(void) setSuppressFlight:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    arg1 = NO;
    %orig;
  } else { %orig; }
}

-(void) setSuppressMining:(bool)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kASupp"] boolValue]) {
    arg1 = NO;
    %orig;
  } else { %orig; }
}
// ANTI-SUPPRESSOR MODULE END
// PHASE MODULE START
-(bool) skilledToMine:(id)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return YES;
  } else { return %orig; }
}
// PHASE MODULE START
%end

%hook WorldZone
// NOCLIP MODULE START
-(int) adminLoad {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoClip"] boolValue]) {
    return 1;
  } else { return %orig; }
}
// NOCLIP MODULE END
// PHASE MODULE START
-(bool) isProtected {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return NO;
  } else { return %orig; }
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
  } else { return %orig; }
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
  } else { return %orig; }
}

-(bool) ownedByPlayer {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return YES;
  } else { return %orig; }
}
// PHASE MODULE END
// SURVIVAL MODULE START
-(float) temperature {
  prefinit;
  %orig;
  if ([[prefobject:@"kSurvival"] boolValue]) {
    return 0;
  } else { return %orig; }
}

-(void) setTemperature:(float)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kSurvival"] boolValue]) {
    arg1 = 0;
    %orig;
  } else { %orig; }
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
  } else { return %orig; }
}
// SPEED MODULE END
%end

%hook Item
// POWER MINE MODULE START
-(float) power {
  prefinit;
  %orig;
  if ([[prefobject:@"kPowerMine"] boolValue]) {
    return 4.9999999;
  } else { return %orig; }
}
// POWER MINE MODULE END
// DAMAGE MODULE START
-(float) damageAmount {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  } else { return %orig; }
}

-(float) fieldDamageAmount {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  } else { return %orig; }
}

-(float) damageRange {
  prefinit;
  %orig;
  if ([[prefobject:@"kDamage"] boolValue]) {
    return 1e+300;
  } else { return %orig; }
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) invulnerable {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return YES;
  } else { return %orig; }
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
  } else { return %orig; }
}
// INVINCIBILITY MODULE END
%end
