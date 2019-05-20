#line 1 "Tweak.x"
#define PLIST_PATH @"/var/mobile/Library/Preferences/Root.plist"

inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class Item; @class PFDevice; @class Player; @class EntityConfig; @class FlurryUtil; @class BaseBlock; @class CCSpeed; @class MetaBlock; @class WorldZone; 
static void (*_logos_orig$_ungrouped$Player$setKarma$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$setKarma$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$Player$karma)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$Player$karma(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$karmaIsPoor)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$karmaIsPoor(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$setAwesomeMode$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setAwesomeMode$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$Player$admin)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$admin(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$hasSteam)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$hasSteam(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$Player$steamCooldownDuration)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$Player$steamCooldownDuration(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$miningSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$miningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$swimmingSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$swimmingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$climbingSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$climbingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$runningSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$runningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$flyingSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$flyingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$damage$amount$attacker$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float, id); static bool _logos_method$_ungrouped$Player$damage$amount$attacker$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float, id); static float (*_logos_orig$_ungrouped$Player$gunEfficiency)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$gunEfficiency(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$canBeDamaged)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$canBeDamaged(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$environmentalDamage$amount$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float); static void _logos_method$_ungrouped$Player$environmentalDamage$amount$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float); static void (*_logos_orig$_ungrouped$Player$didCollideWithEntity$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$didCollideWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$Player$didCollideFeetWithEntity$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$didCollideFeetWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$Player$slowForEntity$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$slowForEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$Player$suppressFlight)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$suppressFlight(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$suppressGuns)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$suppressGuns(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$setSuppressGuns$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setSuppressGuns$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$Player$suppressMining)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$suppressMining(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$setSuppressFlight$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setSuppressFlight$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$Player$setSuppressMining$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setSuppressMining$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$WorldZone$isProtected)(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$WorldZone$isProtected(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$BaseBlock$protectedByField)(_LOGOS_SELF_TYPE_NORMAL BaseBlock* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$BaseBlock$protectedByField(_LOGOS_SELF_TYPE_NORMAL BaseBlock* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayerOrFollower(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MetaBlock$ownedByPlayer)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayer(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$MetaBlock$temperature)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$MetaBlock$temperature(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MetaBlock$setTemperature$)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$MetaBlock$setTemperature$(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL, float); static double (*_logos_orig$_ungrouped$CCSpeed$speed)(_LOGOS_SELF_TYPE_NORMAL CCSpeed* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CCSpeed$speed(_LOGOS_SELF_TYPE_NORMAL CCSpeed* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$damageAmount)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$damageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$fieldDamageAmount)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$fieldDamageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$damageRange)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$damageRange(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Item$invulnerable)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Item$invulnerable(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$EntityConfig$collisionDamageAmount)(_LOGOS_SELF_TYPE_NORMAL EntityConfig* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$EntityConfig$collisionDamageAmount(_LOGOS_SELF_TYPE_NORMAL EntityConfig* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$_ungrouped$FlurryUtil$deviceIsJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PFDevice$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL PFDevice* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PFDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL PFDevice* _LOGOS_SELF_CONST, SEL); 

#line 8 "Tweak.x"


static void _logos_method$_ungrouped$Player$setKarma$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
  if (GetPrefBool(@"kNoDetect")) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$setKarma$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$setKarma$(self, _cmd, arg1);
}

static id _logos_method$_ungrouped$Player$karma(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kNoDetect")) {
      return nil;
  }
  return _logos_orig$_ungrouped$Player$karma(self, _cmd);
}

static bool _logos_method$_ungrouped$Player$karmaIsPoor(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kNoDetect")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$Player$karmaIsPoor(self, _cmd);
}


static void _logos_method$_ungrouped$Player$setAwesomeMode$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
  if (GetPrefBool(@"kAdmin")) {
    arg1 = TRUE;
    _logos_orig$_ungrouped$Player$setAwesomeMode$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$setAwesomeMode$(self, _cmd, arg1);
}

static bool _logos_method$_ungrouped$Player$admin(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kAdmin")) {
      return TRUE;
  }
  return _logos_orig$_ungrouped$Player$admin(self, _cmd);
}


static bool _logos_method$_ungrouped$Player$hasSteam(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSteam")) {
    return TRUE;
  }
  return _logos_orig$_ungrouped$Player$hasSteam(self, _cmd);
}

static double _logos_method$_ungrouped$Player$steamCooldownDuration(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSteam")) {
    return 0;
  }
  return _logos_orig$_ungrouped$Player$steamCooldownDuration(self, _cmd);
}


static float _logos_method$_ungrouped$Player$miningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  return _logos_orig$_ungrouped$Player$miningSpeed(self, _cmd);
}

static float _logos_method$_ungrouped$Player$swimmingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  return _logos_orig$_ungrouped$Player$swimmingSpeed(self, _cmd);
}

static float _logos_method$_ungrouped$Player$climbingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  return _logos_orig$_ungrouped$Player$climbingSpeed(self, _cmd);
}

static float _logos_method$_ungrouped$Player$runningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  return _logos_orig$_ungrouped$Player$runningSpeed(self, _cmd);
}

static float _logos_method$_ungrouped$Player$flyingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSpeed")) {
      return 1.9999999;
  }
  return _logos_orig$_ungrouped$Player$flyingSpeed(self, _cmd);
}


static bool _logos_method$_ungrouped$Player$damage$amount$attacker$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, float arg2, id arg3) {
  if (GetPrefBool(@"kDamage")) {
    arg2 = 99;
    return _logos_orig$_ungrouped$Player$damage$amount$attacker$(self, _cmd, arg1, arg2, arg3);
  }
  return _logos_orig$_ungrouped$Player$damage$amount$attacker$(self, _cmd, arg1, arg2, arg3);
}

static float _logos_method$_ungrouped$Player$gunEfficiency(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kDamage")) {
    return 20;
  }
  return _logos_orig$_ungrouped$Player$gunEfficiency(self, _cmd);
}


static bool _logos_method$_ungrouped$Player$canBeDamaged(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kInvincibility")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$Player$canBeDamaged(self, _cmd);
}

static void _logos_method$_ungrouped$Player$environmentalDamage$amount$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, float arg2) {
  if (GetPrefBool(@"kInvincibility")) {
    arg2 = 0;
    _logos_orig$_ungrouped$Player$environmentalDamage$amount$(self, _cmd, arg1, arg2);
  }
  _logos_orig$_ungrouped$Player$environmentalDamage$amount$(self, _cmd, arg1, arg2);
}


static void _logos_method$_ungrouped$Player$didCollideWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
  if (GetPrefBool(@"kCollision")) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$didCollideWithEntity$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$didCollideWithEntity$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$Player$didCollideFeetWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
  if (GetPrefBool(@"kCollision")) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$didCollideFeetWithEntity$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$didCollideFeetWithEntity$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$Player$slowForEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
  if (GetPrefBool(@"kCollision")) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$slowForEntity$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$slowForEntity$(self, _cmd, arg1);
}


static bool _logos_method$_ungrouped$Player$suppressFlight(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kASupp")) {
      return FALSE;
  }
  return _logos_orig$_ungrouped$Player$suppressFlight(self, _cmd);
}

static bool _logos_method$_ungrouped$Player$suppressGuns(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kASupp")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$Player$suppressGuns(self, _cmd);
}

static void _logos_method$_ungrouped$Player$setSuppressGuns$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
  if (GetPrefBool(@"kASupp")) {
    arg1 = FALSE;
    _logos_orig$_ungrouped$Player$setSuppressGuns$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$setSuppressGuns$(self, _cmd, arg1);
}

static bool _logos_method$_ungrouped$Player$suppressMining(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kASupp")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$Player$suppressMining(self, _cmd);
}

static void _logos_method$_ungrouped$Player$setSuppressFlight$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
  if (GetPrefBool(@"kASupp")) {
    arg1 = FALSE;
    _logos_orig$_ungrouped$Player$setSuppressFlight$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$setSuppressFlight$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$Player$setSuppressMining$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
  if (GetPrefBool(@"kASupp")) {
    arg1 = FALSE;
    _logos_orig$_ungrouped$Player$setSuppressMining$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$Player$setSuppressMining$(self, _cmd, arg1);
}





static bool _logos_method$_ungrouped$WorldZone$isProtected(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kPhase")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$WorldZone$isProtected(self, _cmd);
}





static bool _logos_method$_ungrouped$BaseBlock$protectedByField(_LOGOS_SELF_TYPE_NORMAL BaseBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kPhase")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$BaseBlock$protectedByField(self, _cmd);
}





static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayerOrFollower(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kPhase")) {
    return TRUE;
  }
  return _logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower(self, _cmd);
}

static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayer(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kPhase")) {
    return TRUE;
  }
  return _logos_orig$_ungrouped$MetaBlock$ownedByPlayer(self, _cmd);
}


static float _logos_method$_ungrouped$MetaBlock$temperature(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSurvival")) {
    return 0;
  }
  return _logos_orig$_ungrouped$MetaBlock$temperature(self, _cmd);
}

static void _logos_method$_ungrouped$MetaBlock$setTemperature$(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
  if (GetPrefBool(@"kSurvival")) {
    arg1 = 0;
    _logos_orig$_ungrouped$MetaBlock$setTemperature$(self, _cmd, arg1);
  }
  _logos_orig$_ungrouped$MetaBlock$setTemperature$(self, _cmd, arg1);
}





static double _logos_method$_ungrouped$CCSpeed$speed(_LOGOS_SELF_TYPE_NORMAL CCSpeed* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kSpeed")) {
    return 1.9999999;
  }
  return _logos_orig$_ungrouped$CCSpeed$speed(self, _cmd);
}





static float _logos_method$_ungrouped$Item$damageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kDamage")) {
    return 1e+32;
  }
  return _logos_orig$_ungrouped$Item$damageAmount(self, _cmd);
}

static float _logos_method$_ungrouped$Item$fieldDamageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kDamage")) {
    return 1e+32;
  }
  return _logos_orig$_ungrouped$Item$fieldDamageAmount(self, _cmd);
}

static float _logos_method$_ungrouped$Item$damageRange(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kDamage")) {
    return 1e+32;
    _logos_orig$_ungrouped$Item$damageRange(self, _cmd);
  }
  return _logos_orig$_ungrouped$Item$damageRange(self, _cmd);
}


static bool _logos_method$_ungrouped$Item$invulnerable(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kInvincibility")) {
    return TRUE;
  }
  return _logos_orig$_ungrouped$Item$invulnerable(self, _cmd);
}





static float _logos_method$_ungrouped$EntityConfig$collisionDamageAmount(_LOGOS_SELF_TYPE_NORMAL EntityConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kInvincibility")) {
    return 0;
  }
  return _logos_orig$_ungrouped$EntityConfig$collisionDamageAmount(self, _cmd);
}





static BOOL _logos_meta_method$_ungrouped$FlurryUtil$deviceIsJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kNoDetect")) {
    return FALSE;
  }
  return _logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken(self, _cmd);
}





static bool _logos_method$_ungrouped$PFDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL PFDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  if (GetPrefBool(@"kNoDetect")) {
    return FALSE;
  }
  return _logos_orig$_ungrouped$PFDevice$isJailbroken(self, _cmd);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$Player = objc_getClass("Player"); MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setKarma:), (IMP)&_logos_method$_ungrouped$Player$setKarma$, (IMP*)&_logos_orig$_ungrouped$Player$setKarma$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(karma), (IMP)&_logos_method$_ungrouped$Player$karma, (IMP*)&_logos_orig$_ungrouped$Player$karma);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(karmaIsPoor), (IMP)&_logos_method$_ungrouped$Player$karmaIsPoor, (IMP*)&_logos_orig$_ungrouped$Player$karmaIsPoor);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setAwesomeMode:), (IMP)&_logos_method$_ungrouped$Player$setAwesomeMode$, (IMP*)&_logos_orig$_ungrouped$Player$setAwesomeMode$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(admin), (IMP)&_logos_method$_ungrouped$Player$admin, (IMP*)&_logos_orig$_ungrouped$Player$admin);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(hasSteam), (IMP)&_logos_method$_ungrouped$Player$hasSteam, (IMP*)&_logos_orig$_ungrouped$Player$hasSteam);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(steamCooldownDuration), (IMP)&_logos_method$_ungrouped$Player$steamCooldownDuration, (IMP*)&_logos_orig$_ungrouped$Player$steamCooldownDuration);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(miningSpeed), (IMP)&_logos_method$_ungrouped$Player$miningSpeed, (IMP*)&_logos_orig$_ungrouped$Player$miningSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(swimmingSpeed), (IMP)&_logos_method$_ungrouped$Player$swimmingSpeed, (IMP*)&_logos_orig$_ungrouped$Player$swimmingSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(climbingSpeed), (IMP)&_logos_method$_ungrouped$Player$climbingSpeed, (IMP*)&_logos_orig$_ungrouped$Player$climbingSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(runningSpeed), (IMP)&_logos_method$_ungrouped$Player$runningSpeed, (IMP*)&_logos_orig$_ungrouped$Player$runningSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(flyingSpeed), (IMP)&_logos_method$_ungrouped$Player$flyingSpeed, (IMP*)&_logos_orig$_ungrouped$Player$flyingSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(damage:amount:attacker:), (IMP)&_logos_method$_ungrouped$Player$damage$amount$attacker$, (IMP*)&_logos_orig$_ungrouped$Player$damage$amount$attacker$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(gunEfficiency), (IMP)&_logos_method$_ungrouped$Player$gunEfficiency, (IMP*)&_logos_orig$_ungrouped$Player$gunEfficiency);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(canBeDamaged), (IMP)&_logos_method$_ungrouped$Player$canBeDamaged, (IMP*)&_logos_orig$_ungrouped$Player$canBeDamaged);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(environmentalDamage:amount:), (IMP)&_logos_method$_ungrouped$Player$environmentalDamage$amount$, (IMP*)&_logos_orig$_ungrouped$Player$environmentalDamage$amount$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(didCollideWithEntity:), (IMP)&_logos_method$_ungrouped$Player$didCollideWithEntity$, (IMP*)&_logos_orig$_ungrouped$Player$didCollideWithEntity$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(didCollideFeetWithEntity:), (IMP)&_logos_method$_ungrouped$Player$didCollideFeetWithEntity$, (IMP*)&_logos_orig$_ungrouped$Player$didCollideFeetWithEntity$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(slowForEntity:), (IMP)&_logos_method$_ungrouped$Player$slowForEntity$, (IMP*)&_logos_orig$_ungrouped$Player$slowForEntity$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(suppressFlight), (IMP)&_logos_method$_ungrouped$Player$suppressFlight, (IMP*)&_logos_orig$_ungrouped$Player$suppressFlight);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(suppressGuns), (IMP)&_logos_method$_ungrouped$Player$suppressGuns, (IMP*)&_logos_orig$_ungrouped$Player$suppressGuns);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setSuppressGuns:), (IMP)&_logos_method$_ungrouped$Player$setSuppressGuns$, (IMP*)&_logos_orig$_ungrouped$Player$setSuppressGuns$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(suppressMining), (IMP)&_logos_method$_ungrouped$Player$suppressMining, (IMP*)&_logos_orig$_ungrouped$Player$suppressMining);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setSuppressFlight:), (IMP)&_logos_method$_ungrouped$Player$setSuppressFlight$, (IMP*)&_logos_orig$_ungrouped$Player$setSuppressFlight$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setSuppressMining:), (IMP)&_logos_method$_ungrouped$Player$setSuppressMining$, (IMP*)&_logos_orig$_ungrouped$Player$setSuppressMining$);Class _logos_class$_ungrouped$WorldZone = objc_getClass("WorldZone"); MSHookMessageEx(_logos_class$_ungrouped$WorldZone, @selector(isProtected), (IMP)&_logos_method$_ungrouped$WorldZone$isProtected, (IMP*)&_logos_orig$_ungrouped$WorldZone$isProtected);Class _logos_class$_ungrouped$BaseBlock = objc_getClass("BaseBlock"); MSHookMessageEx(_logos_class$_ungrouped$BaseBlock, @selector(protectedByField), (IMP)&_logos_method$_ungrouped$BaseBlock$protectedByField, (IMP*)&_logos_orig$_ungrouped$BaseBlock$protectedByField);Class _logos_class$_ungrouped$MetaBlock = objc_getClass("MetaBlock"); MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(ownedByPlayerOrFollower), (IMP)&_logos_method$_ungrouped$MetaBlock$ownedByPlayerOrFollower, (IMP*)&_logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower);MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(ownedByPlayer), (IMP)&_logos_method$_ungrouped$MetaBlock$ownedByPlayer, (IMP*)&_logos_orig$_ungrouped$MetaBlock$ownedByPlayer);MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(temperature), (IMP)&_logos_method$_ungrouped$MetaBlock$temperature, (IMP*)&_logos_orig$_ungrouped$MetaBlock$temperature);MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(setTemperature:), (IMP)&_logos_method$_ungrouped$MetaBlock$setTemperature$, (IMP*)&_logos_orig$_ungrouped$MetaBlock$setTemperature$);Class _logos_class$_ungrouped$CCSpeed = objc_getClass("CCSpeed"); MSHookMessageEx(_logos_class$_ungrouped$CCSpeed, @selector(speed), (IMP)&_logos_method$_ungrouped$CCSpeed$speed, (IMP*)&_logos_orig$_ungrouped$CCSpeed$speed);Class _logos_class$_ungrouped$Item = objc_getClass("Item"); MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(damageAmount), (IMP)&_logos_method$_ungrouped$Item$damageAmount, (IMP*)&_logos_orig$_ungrouped$Item$damageAmount);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(fieldDamageAmount), (IMP)&_logos_method$_ungrouped$Item$fieldDamageAmount, (IMP*)&_logos_orig$_ungrouped$Item$fieldDamageAmount);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(damageRange), (IMP)&_logos_method$_ungrouped$Item$damageRange, (IMP*)&_logos_orig$_ungrouped$Item$damageRange);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(invulnerable), (IMP)&_logos_method$_ungrouped$Item$invulnerable, (IMP*)&_logos_orig$_ungrouped$Item$invulnerable);Class _logos_class$_ungrouped$EntityConfig = objc_getClass("EntityConfig"); MSHookMessageEx(_logos_class$_ungrouped$EntityConfig, @selector(collisionDamageAmount), (IMP)&_logos_method$_ungrouped$EntityConfig$collisionDamageAmount, (IMP*)&_logos_orig$_ungrouped$EntityConfig$collisionDamageAmount);Class _logos_class$_ungrouped$FlurryUtil = objc_getClass("FlurryUtil"); Class _logos_metaclass$_ungrouped$FlurryUtil = object_getClass(_logos_class$_ungrouped$FlurryUtil); MSHookMessageEx(_logos_metaclass$_ungrouped$FlurryUtil, @selector(deviceIsJailbroken), (IMP)&_logos_meta_method$_ungrouped$FlurryUtil$deviceIsJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken);Class _logos_class$_ungrouped$PFDevice = objc_getClass("PFDevice"); MSHookMessageEx(_logos_class$_ungrouped$PFDevice, @selector(isJailbroken), (IMP)&_logos_method$_ungrouped$PFDevice$isJailbroken, (IMP*)&_logos_orig$_ungrouped$PFDevice$isJailbroken);} }
#line 337 "Tweak.x"
