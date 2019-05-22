#import <Foundation/Foundation.h>
#define kPath @"/var/mobile/Library/Preferences/the.overmind.replayprefs.plist"
/*
List of objectForKeys
kNoDetect
kAdmin
kSteam
kSpeed
kInvincibility
kDamage
kPhase
kSurvival
kASupp
kCollision
*/
%hook FlurryUtil
// NO DETECT MODULE START
+(BOOL) deviceIsJailbroken {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kNoDetect"] boolValue]) {
    return FALSE;
  }
  return %orig;
}
// NO DETECT MODULE END
%end

%hook PFDevice
// NO DETECT MODULE START
-(bool) isJailbroken {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kNoDetect"] boolValue]) {
    return FALSE;
  }
  return %orig;
}
// NO DETECT MODULE END
%end

%hook Player
// NO DETECT MODULE START
-(bool) karmaIsPoor {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kNoDetect"] boolValue]) {
    return FALSE;
  }
  return %orig;
}

-(id) karma {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kNoDetect"] boolValue]) {
    return nil;
  }
  return %orig;
}

-(void) setKarma:(id)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kNoDetect"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  %orig;
}
// NO DETECT MODULE END
// ADMIN MODULE START
-(void) setAwesomeMode:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kAdmin"] boolValue]) {
    arg1 = TRUE;
    %orig;
  }
  %orig;
}

-(bool) admin {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kAdmin"] boolValue]) {
    return TRUE;
  }
  return %orig;
}
// ADMIN MODULE END
// STEAM MODULE START
-(bool) hasSteam {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSteam"] boolValue]) {
    return TRUE;
  }
  return %orig;
}

-(double) steamCooldownDuration {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSteam"] boolValue]) {
    return 0;
  }
  return %orig;
}
// STEAM MODULE END
// SPEED MODULE START
-(float) miningSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) swimmingSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) climbingSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) runningSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}

-(float) flyingSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}
// SPEED MODULE END
// DAMAGE MODULE START
-(bool) damage:(int)arg1 amount:(float)arg2 attacker:(id)arg3 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    arg2 = 99;
    return %orig;
  }
  return %orig;
}

-(float) gunEfficiency {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 20;
  }
  return %orig;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) canBeDamaged {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kInvincibility"] boolValue]) {
    return FALSE;
  }
  return %orig;
}

-(void) environmentalDamage:(int)arg1 amount:(float)arg2 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kInvincibility"] boolValue]) {
    arg2 = 0;
    %orig;
  }
  %orig;
}
// INVINCIBILITY MODULE END
// COLLISION MODULE START
-(void) didCollideWithEntity:(id)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kCollision"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  %orig;
}

-(void) didCollideFeetWithEntity:(id)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kCollision"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  %orig;
}

-(void) slowForEntity:(id)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kCollision"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  %orig;
}

-(bool) colliding {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kCollision"] boolValue]) {
    return FALSE;
  }
  return %orig;
}
// COLLISION MODULE END
// ANTI-SUPPRESSOR MODULE START
-(bool) suppressFlight {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    return FALSE;
  }
  return %orig;
}

-(bool) suppressGuns {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    return FALSE;
  }
  return %orig;
}

-(void) setSuppressGuns:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    arg1 = FALSE;
    %orig;
  }
  %orig;
}

-(bool) suppressMining {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    return FALSE;
  }
  return %orig;
}

-(void) setSuppressFlight:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    arg1 = FALSE;
    %orig;
  }
  %orig;
}

-(void) setSuppressMining:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
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
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kPhase"] boolValue]) {
    return FALSE;
  }
  return %orig;
}
// PHASE MODULE END
%end

%hook BaseBlock
// PHASE MODULE START
-(bool) protectedByField {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kPhase"] boolValue]) {
    return FALSE;
  }
  return %orig;
}
// PHASE MODULE END
%end

%hook MetaBlock
// PHASE MODULE START
-(bool) ownedByPlayerOrFollower {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kPhase"] boolValue]) {
    return TRUE;
  }
  return %orig;
}

-(bool) ownedByPlayer {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kPhase"] boolValue]) {
    return TRUE;
  }
  return %orig;
}
// PHASE MODULE END
// SURVIVAL MODULE START
-(float) temperature {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSurvival"] boolValue]) {
    return 0;
  }
  return %orig;
}

-(void) setTemperature:(float)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSurvival"] boolValue]) {
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
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  return %orig;
}
// SPEED MODULE END
%end

%hook Item
// DAMAGE MODULE START
-(float) damageAmount {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 1e+46;
  }
  return %orig;
}

-(float) fieldDamageAmount {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 1e+46;
  }
  return %orig;
}

-(float) damageRange {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 1e+46;
  }
  return %orig;
}
// DAMAGE MODULE END
// INVINCIBILITY MODULE START
-(bool) invulnerable {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kInvincibility"] boolValue]) {
    return TRUE;
  }
  return %orig;
}
// INVINCIBILITY MODULE END
%end

%hook EntityConfig
// INVINCIBILITY MODULE START
-(float) collisionDamageAmount {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kInvincibility"] boolValue]) {
    return 0;
  }
  return %orig;
}
// INVINCIBILITY MODULE END
%end
