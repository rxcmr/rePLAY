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
// ADMIN START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// ADMIN END
%end

%hook GameCommandSay
// ADMIN START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// ADMIN END
%end

%hook GameCommandPlayerDie
// ADMIN START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// ADMIN END
%end

%hook GameCommandDebug
// ADMIN START
+(bool) consoleRequiresAdmin {
  prefinit;
  %orig;
  if ([[prefobject:@"kAdmin"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// ADMIN END
%end

%hook Entity
// AIR WALK START
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
// NO DETECT START
+(BOOL) deviceIsJailbroken {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// NO DETECT END
%end

%hook PFDevice
// NO DETECT START
-(bool) isJailbroken {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoDetect"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// NO DETECT END
%end

%hook Player
// ZOOM START
-(float) zoomModifier {
  prefinit;
  %orig;
  if ([[prefobject:@"kZoom"] boolValue]) {
    float zoomValue = [[prefobject:@"kZoomSlider"] floatValue];
    return zoomValue;
  } else { return %orig; }
}
// ZOOM END
// NO DETECT START
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
// NO DETECT END
// ADMIN START
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
// ADMIN END
// STEAM START
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
// STEAM END
// SPEED START
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
// SPEED END
// DAMAGE START
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
// DAMAGE END
// INVINCIBILITY START
-(BOOL) canEvadePrecipitationDamage:(int)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return YES;
  } else { return %orig; }
}

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
// INVINCIBILITY END
// COLLISION START
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
// COLLISION END
// ANTI-SUPPRESSOR START
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
// ANTI-SUPPRESSOR END
// PHASE START
-(bool) skilledToMine:(id)arg1 {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return YES;
  } else { return %orig; }
}
// PHASE START
%end

%hook WorldZone
// NOCLIP START
-(int) adminLoad {
  prefinit;
  %orig;
  if ([[prefobject:@"kNoClip"] boolValue]) {
    return 1;
  } else { return %orig; }
}
// NOCLIP END
// PHASE START
-(bool) isProtected {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// PHASE END
%end

%hook BaseBlock
// PHASE START
-(bool) protectedByField {
  prefinit;
  %orig;
  if ([[prefobject:@"kPhase"] boolValue]) {
    return NO;
  } else { return %orig; }
}
// PHASE END
%end

%hook MetaBlock
// PHASE START
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
// PHASE END
// SURVIVAL START
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
// SURVIVAL END
%end

%hook CCSpeed
// SPEED START
-(double) speed {
  prefinit;
  %orig;
  if ([[prefobject:@"kSpeed"] boolValue]) {
    return 1.9999999;
  } else { return %orig; }
}
// SPEED END
%end

%hook Item
// POWER MINE START
-(float) power {
  prefinit;
  %orig;
  if ([[prefobject:@"kPowerMine"] boolValue]) {
    return 4.9999999;
  } else { return %orig; }
}
// POWER MINE END
// DAMAGE START
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
// DAMAGE END
// INVINCIBILITY START
-(bool) invulnerable {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return YES;
  } else { return %orig; }
}
// INVINCIBILITY END
%end

%hook EntityConfig
// INVINCIBILITY START
-(float) collisionDamageAmount {
  prefinit;
  %orig;
  if ([[prefobject:@"kInvincibility"] boolValue]) {
    return 0;
  } else { return %orig; }
}
// INVINCIBILITY END
%end
