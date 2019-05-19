#import <Foundation/Foundation.h>
#define kPath @"/var/mobile/Library/Preferences/the.overmind.replayprefs.plist"
/*
List of objectForKeys
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
%hook Player
// ADMIN MODULE START
-(void) setAwesomeMode:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kAdmin"] boolValue]) {
    arg1 = TRUE;
    %orig;
  }
  [prefs release];
  %orig;
}

-(bool) admin {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kAdmin"] boolValue]) {
    return TRUE;
  }
  [prefs release];
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
  [prefs release];
  return %orig;
}

-(double) steamCooldownDuration {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSteam"] boolValue]) {
    return 0;
  }
  [prefs release];
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
  [prefs release];
  return %orig;
}

-(float) swimmingSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  [prefs release];
  return %orig;
}

-(float) climbingSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  [prefs release];
  return %orig;
}

-(float) runningSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  [prefs release];
  return %orig;
}

-(float) flyingSpeed {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSpeed"] boolValue]) {
    return 1.9999999;
  }
  [prefs release];
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
  [prefs release];
  return %orig;
}

-(float) gunEfficiency {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 20;
  }
  [prefs release];
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
  [prefs release];
  return %orig;
}

-(void) environmentalDamage:(int)arg1 amount:(float)arg2 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kInvincibility"] boolValue]) {
    arg2 = 0;
    %orig;
  }
  [prefs release];
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
  [prefs release];
  %orig;
}

-(void) didCollideFeetWithEntity:(id)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kCollision"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  [prefs release];
  %orig;
}

-(void) slowForEntity:(id)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kCollision"] boolValue]) {
    arg1 = nil;
    %orig;
  }
  [prefs release];
  %orig;
}
// COLLISION MODULE START
// ANTI-SUPPRESSOR MODULE START
-(bool) suppressFlight {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    return FALSE;
  }
  [prefs release];
  return %orig;
}

-(bool) suppressGuns {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    return FALSE;
  }
  [prefs release];
  return %orig;
}

-(void) setSuppressGuns:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    arg1 = FALSE;
    %orig;
  }
  [prefs release];
  %orig;
}

-(bool) suppressMining {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    return FALSE;
  }
  [prefs release];
  return %orig;
}

-(void) setSuppressFlight:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    arg1 = FALSE;
    %orig;
  }
  [prefs release];
  %orig;
}

-(void) setSuppressMining:(bool)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kASupp"] boolValue]) {
    arg1 = FALSE;
    %orig;
  }
  [prefs release];
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
  [prefs release];
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
  [prefs release];
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
  [prefs release];
  return %orig;
}

-(bool) ownedByPlayer {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kPhase"] boolValue]) {
    return TRUE;
  }
  [prefs release];
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
  [prefs release];
  return %orig;
}

-(void) setTemperature:(float)arg1 {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kSurvival"] boolValue]) {
    arg1 = 0;
    %orig;
  }
  [prefs release];
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
  [prefs release];
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
    return 1e+32;
  }
  [prefs release];
  return %orig;
}

-(float) fieldDamageAmount {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 1e+32;
  }
  [prefs release];
  return %orig;
}

-(float) damageRange {
  NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath];
  %orig;
  if ([[prefs objectForKey:@"kDamage"] boolValue]) {
    return 1e+32;
  }
  [prefs release];
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
  [prefs release];
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
  [prefs release];
  return %orig;
}
// INVINCIBILITY MODULE END
%end
