#line 1 "Tweak.x"
#import <Foundation/Foundation.h>
#define kPath @"/var/mobile/Library/Preferences/the.overmind.replayprefs.plist"
#define prefinit NSDictionary *prefs=[[NSDictionary alloc] initWithContentsOfFile:kPath]
#define prefkey prefs objectForKey



















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

@class Player; @class Entity; @class BaseBlock; @class GameCommandPlayerDie; @class MetaBlock; @class GameCommandSay; @class FlurryUtil; @class CCSpeed; @class Item; @class PFDevice; @class GameCommand; @class GameCommandDebug; @class EntityConfig; @class Lightmapper; @class WorldZone; 
static bool (*_logos_orig$_ungrouped$Lightmapper$isHazy)(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Lightmapper$isHazy(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Lightmapper$illuminateBlocks$)(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$Lightmapper$illuminateBlocks$(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$Lightmapper$setDefaultBaseLight$)(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$Lightmapper$setDefaultBaseLight$(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST, SEL, float); static bool (*_logos_meta_orig$_ungrouped$GameCommand$consoleRequiresAdmin)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$GameCommand$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$GameCommandSay$consoleRequiresAdmin)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$GameCommandSay$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_meta_orig$_ungrouped$GameCommandDebug$consoleRequiresAdmin)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool _logos_meta_method$_ungrouped$GameCommandDebug$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Entity$grounded)(_LOGOS_SELF_TYPE_NORMAL Entity* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$Entity$grounded(_LOGOS_SELF_TYPE_NORMAL Entity* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Entity$setGrounded$)(_LOGOS_SELF_TYPE_NORMAL Entity* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$Entity$setGrounded$(_LOGOS_SELF_TYPE_NORMAL Entity* _LOGOS_SELF_CONST, SEL, BOOL); static BOOL (*_logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$_ungrouped$FlurryUtil$deviceIsJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PFDevice$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL PFDevice* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PFDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL PFDevice* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$activeItemIsTool)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$activeItemIsTool(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$zoomModifier)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$zoomModifier(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$karmaIsPoor)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$karmaIsPoor(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$Player$karma)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$Player$karma(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$setKarma$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$setKarma$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$Player$setAwesomeMode$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setAwesomeMode$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$Player$admin)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$admin(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$hasSteam)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$hasSteam(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$Player$steamCooldownDuration)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$Player$steamCooldownDuration(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$miningSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$miningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$swimmingSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$swimmingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$climbingSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$climbingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$runningSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$runningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$flyingSpeed)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$flyingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Player$aimSteadiness)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$aimSteadiness(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$damage$amount$attacker$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float, id); static bool _logos_method$_ungrouped$Player$damage$amount$attacker$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float, id); static float (*_logos_orig$_ungrouped$Player$gunEfficiency)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Player$gunEfficiency(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$Player$canEvadePrecipitationDamage$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int); static BOOL _logos_method$_ungrouped$Player$canEvadePrecipitationDamage$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int); static bool (*_logos_orig$_ungrouped$Player$canBeDamaged)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$canBeDamaged(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$environmentalDamage$amount$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float); static void _logos_method$_ungrouped$Player$environmentalDamage$amount$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, int, float); static void (*_logos_orig$_ungrouped$Player$didCollideWithEntity$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$didCollideWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$Player$didCollideFeetWithEntity$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$didCollideFeetWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$Player$slowForEntity$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$Player$slowForEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$Player$colliding)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$colliding(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$suppressFlight)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$suppressFlight(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Player$suppressGuns)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$suppressGuns(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$setSuppressGuns$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setSuppressGuns$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$Player$suppressMining)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Player$suppressMining(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$Player$setSuppressFlight$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setSuppressFlight$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$Player$setSuppressMining$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$Player$setSuppressMining$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$Player$skilledToMine$)(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$Player$skilledToMine$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST, SEL, id); static int (*_logos_orig$_ungrouped$WorldZone$adminLoad)(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$WorldZone$adminLoad(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$WorldZone$isProtected)(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$WorldZone$isProtected(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$BaseBlock$protectedByField)(_LOGOS_SELF_TYPE_NORMAL BaseBlock* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$BaseBlock$protectedByField(_LOGOS_SELF_TYPE_NORMAL BaseBlock* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayerOrFollower(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$MetaBlock$ownedByPlayer)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayer(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$MetaBlock$temperature)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$MetaBlock$temperature(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MetaBlock$setTemperature$)(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$MetaBlock$setTemperature$(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST, SEL, float); static double (*_logos_orig$_ungrouped$CCSpeed$speed)(_LOGOS_SELF_TYPE_NORMAL CCSpeed* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CCSpeed$speed(_LOGOS_SELF_TYPE_NORMAL CCSpeed* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Item$isMiningTool)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Item$isMiningTool(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$power)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$power(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$damageAmount)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$damageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$fieldDamageAmount)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$fieldDamageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$Item$damageRange)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$Item$damageRange(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$Item$invulnerable)(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$Item$invulnerable(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$EntityConfig$collisionDamageAmount)(_LOGOS_SELF_TYPE_NORMAL EntityConfig* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$EntityConfig$collisionDamageAmount(_LOGOS_SELF_TYPE_NORMAL EntityConfig* _LOGOS_SELF_CONST, SEL); 

#line 23 "Tweak.x"


static bool _logos_method$_ungrouped$Lightmapper$isHazy(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Lightmapper$isHazy(self, _cmd);
    if ([[prefkey:@"kLight"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$Lightmapper$isHazy(self, _cmd); }
}

static void _logos_method$_ungrouped$Lightmapper$illuminateBlocks$(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    prefinit;
    _logos_orig$_ungrouped$Lightmapper$illuminateBlocks$(self, _cmd, arg1);
    if ([[prefkey:@"kLight"] boolValue]) {
      arg1 = 1.7976931348623157E-308;
      _logos_orig$_ungrouped$Lightmapper$illuminateBlocks$(self, _cmd, arg1);
    } else { _logos_orig$_ungrouped$Lightmapper$illuminateBlocks$(self, _cmd, arg1); }
}

static void _logos_method$_ungrouped$Lightmapper$setDefaultBaseLight$(_LOGOS_SELF_TYPE_NORMAL Lightmapper* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    prefinit;
    _logos_orig$_ungrouped$Lightmapper$setDefaultBaseLight$(self, _cmd, arg1);
    if ([[prefkey:@"kLight"] boolValue]) {
      arg1 = 1.7976931348623157E-308;
      _logos_orig$_ungrouped$Lightmapper$setDefaultBaseLight$(self, _cmd, arg1);
    } else { _logos_orig$_ungrouped$Lightmapper$setDefaultBaseLight$(self, _cmd, arg1); }
}





static bool _logos_meta_method$_ungrouped$GameCommand$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_meta_orig$_ungrouped$GameCommand$consoleRequiresAdmin(self, _cmd);
    if ([[prefkey:@"kAdmin"] boolValue]) {
      return NO;
    } else { return _logos_meta_orig$_ungrouped$GameCommand$consoleRequiresAdmin(self, _cmd); }
}





static bool _logos_meta_method$_ungrouped$GameCommandSay$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_meta_orig$_ungrouped$GameCommandSay$consoleRequiresAdmin(self, _cmd);
    if ([[prefkey:@"kAdmin"] boolValue]) {
      return NO;
    } else { return _logos_meta_orig$_ungrouped$GameCommandSay$consoleRequiresAdmin(self, _cmd); }
}





static bool _logos_meta_method$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_meta_orig$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin(self, _cmd);
    if ([[prefkey:@"kAdmin"] boolValue]) {
      return NO;
    } else { return _logos_meta_orig$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin(self, _cmd); }
}





static bool _logos_meta_method$_ungrouped$GameCommandDebug$consoleRequiresAdmin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_meta_orig$_ungrouped$GameCommandDebug$consoleRequiresAdmin(self, _cmd);
    if ([[prefkey:@"kAdmin"] boolValue]) {
      return NO;
    } else { return _logos_meta_orig$_ungrouped$GameCommandDebug$consoleRequiresAdmin(self, _cmd); }
}





static BOOL _logos_method$_ungrouped$Entity$grounded(_LOGOS_SELF_TYPE_NORMAL Entity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Entity$grounded(self, _cmd);
    if ([[prefkey:@"kAirWalk"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$Entity$grounded(self, _cmd); }
}

static void _logos_method$_ungrouped$Entity$setGrounded$(_LOGOS_SELF_TYPE_NORMAL Entity* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    prefinit;
    _logos_orig$_ungrouped$Entity$setGrounded$(self, _cmd, arg1);
    if ([[prefkey:@"kAirWalk"] boolValue]) {
      arg1 = YES;
    } else { _logos_orig$_ungrouped$Entity$setGrounded$(self, _cmd, arg1); }
}





static BOOL _logos_meta_method$_ungrouped$FlurryUtil$deviceIsJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken(self, _cmd);
    if ([[prefkey:@"kNoDetect"] boolValue]) {
      return NO;
    } else { return _logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken(self, _cmd); }
}





static bool _logos_method$_ungrouped$PFDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL PFDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$PFDevice$isJailbroken(self, _cmd);
    if ([[prefkey:@"kNoDetect"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$PFDevice$isJailbroken(self, _cmd); }
}





static bool _logos_method$_ungrouped$Player$activeItemIsTool(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  prefinit;
  _logos_orig$_ungrouped$Player$activeItemIsTool(self, _cmd);
  if ([[prefkey:@"kMineLikeboonkgang"] boolValue]) {
    return YES;
  } else { return _logos_orig$_ungrouped$Player$activeItemIsTool(self, _cmd); }
}


static float _logos_method$_ungrouped$Player$zoomModifier(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$zoomModifier(self, _cmd);
    if ([[prefkey:@"kZoom"] boolValue]) {
      float zoomValue = [[prefkey:@"kZoomSlider"] floatValue];
      return zoomValue;
    } else { return _logos_orig$_ungrouped$Player$zoomModifier(self, _cmd); }
}


static bool _logos_method$_ungrouped$Player$karmaIsPoor(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$karmaIsPoor(self, _cmd);
    if ([[prefkey:@"kNoDetect"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$Player$karmaIsPoor(self, _cmd); }
}

static id _logos_method$_ungrouped$Player$karma(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$karma(self, _cmd);
    if ([[prefkey:@"kNoDetect"] boolValue]) {
      return nil;
    } else { return _logos_orig$_ungrouped$Player$karma(self, _cmd); }
}

static void _logos_method$_ungrouped$Player$setKarma$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$setKarma$(self, _cmd, arg1);
    if ([[prefkey:@"kNoDetect"] boolValue]) {
      arg1 = nil;
      _logos_orig$_ungrouped$Player$setKarma$(self, _cmd, arg1);
   } else { _logos_orig$_ungrouped$Player$setKarma$(self, _cmd, arg1); }
}


static void _logos_method$_ungrouped$Player$setAwesomeMode$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$setAwesomeMode$(self, _cmd, arg1);
    if ([[prefkey:@"kAdmin"] boolValue]) {
      arg1 = YES;
      _logos_orig$_ungrouped$Player$setAwesomeMode$(self, _cmd, arg1);
    } else { _logos_orig$_ungrouped$Player$setAwesomeMode$(self, _cmd, arg1); }
}

static bool _logos_method$_ungrouped$Player$admin(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$admin(self, _cmd);
    if ([[prefkey:@"kAdmin"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$Player$admin(self, _cmd); }
}


static bool _logos_method$_ungrouped$Player$hasSteam(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$hasSteam(self, _cmd);
    if ([[prefkey:@"kSteam"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$Player$hasSteam(self, _cmd); }
}

static double _logos_method$_ungrouped$Player$steamCooldownDuration(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$steamCooldownDuration(self, _cmd);
    if ([[prefkey:@"kSteam"] boolValue]) {
      return 0;
    } else { return _logos_orig$_ungrouped$Player$steamCooldownDuration(self, _cmd); }
}


static float _logos_method$_ungrouped$Player$miningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$miningSpeed(self, _cmd);
    if ([[prefkey:@"kSpeed"] boolValue]) {
      return 1.9999999;
    } else { return _logos_orig$_ungrouped$Player$miningSpeed(self, _cmd); }
}

static float _logos_method$_ungrouped$Player$swimmingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$swimmingSpeed(self, _cmd);
    if ([[prefkey:@"kSpeed"] boolValue]) {
      return 1.9999999;
    } else { return _logos_orig$_ungrouped$Player$swimmingSpeed(self, _cmd); }
}

static float _logos_method$_ungrouped$Player$climbingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$climbingSpeed(self, _cmd);
    if ([[prefkey:@"kSpeed"] boolValue]) {
      return 1.9999999;
    } else { return _logos_orig$_ungrouped$Player$climbingSpeed(self, _cmd); };
}

static float _logos_method$_ungrouped$Player$runningSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$runningSpeed(self, _cmd);
    if ([[prefkey:@"kSpeed"] boolValue]) {
      return 1.9999999;
    } else { return _logos_orig$_ungrouped$Player$runningSpeed(self, _cmd); }
}

static float _logos_method$_ungrouped$Player$flyingSpeed(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$flyingSpeed(self, _cmd);
    if ([[prefkey:@"kSpeed"] boolValue]) {
      return 1.9999999;
    } else { return _logos_orig$_ungrouped$Player$flyingSpeed(self, _cmd); };
}


static float _logos_method$_ungrouped$Player$aimSteadiness(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$aimSteadiness(self, _cmd);
    if ([[prefkey:@"kDamage"] boolValue]) {
      return 1.7976931348623157E+308;
    } else { return _logos_orig$_ungrouped$Player$aimSteadiness(self, _cmd); };
}

static bool _logos_method$_ungrouped$Player$damage$amount$attacker$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, float arg2, id arg3) {
    prefinit;
    _logos_orig$_ungrouped$Player$damage$amount$attacker$(self, _cmd, arg1, arg2, arg3);
    if ([[prefkey:@"kDamage"] boolValue]) {
      arg2 = 1.7976931348623157E+308;
      return _logos_orig$_ungrouped$Player$damage$amount$attacker$(self, _cmd, arg1, arg2, arg3);
    } else { return _logos_orig$_ungrouped$Player$damage$amount$attacker$(self, _cmd, arg1, arg2, arg3); }
}

static float _logos_method$_ungrouped$Player$gunEfficiency(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$gunEfficiency(self, _cmd);
    if ([[prefkey:@"kDamage"] boolValue]) {
      return 20;
    } else { return _logos_orig$_ungrouped$Player$gunEfficiency(self, _cmd); }
}


static BOOL _logos_method$_ungrouped$Player$canEvadePrecipitationDamage$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$canEvadePrecipitationDamage$(self, _cmd, arg1);
    if ([[prefkey:@"kInvincibility"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$Player$canEvadePrecipitationDamage$(self, _cmd, arg1); }
}

static bool _logos_method$_ungrouped$Player$canBeDamaged(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$canBeDamaged(self, _cmd);
    if ([[prefkey:@"kInvincibility"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$Player$canBeDamaged(self, _cmd); }
}

static void _logos_method$_ungrouped$Player$environmentalDamage$amount$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, float arg2) {
    prefinit;
    _logos_orig$_ungrouped$Player$environmentalDamage$amount$(self, _cmd, arg1, arg2);
    if ([[prefkey:@"kInvincibility"] boolValue]) {
      arg2 = 0;
      _logos_orig$_ungrouped$Player$environmentalDamage$amount$(self, _cmd, arg1, arg2);
    } else { _logos_orig$_ungrouped$Player$environmentalDamage$amount$(self, _cmd, arg1, arg2); }
}


static void _logos_method$_ungrouped$Player$didCollideWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$didCollideWithEntity$(self, _cmd, arg1);

}

static void _logos_method$_ungrouped$Player$didCollideFeetWithEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$didCollideFeetWithEntity$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$Player$slowForEntity$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = nil;
    _logos_orig$_ungrouped$Player$slowForEntity$(self, _cmd, arg1);

}

static bool _logos_method$_ungrouped$Player$colliding(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}


static bool _logos_method$_ungrouped$Player$suppressFlight(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$suppressFlight(self, _cmd);
    if ([[prefkey:@"kASupp"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$Player$suppressFlight(self, _cmd); }
}

static bool _logos_method$_ungrouped$Player$suppressGuns(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$suppressGuns(self, _cmd);
    if ([[prefkey:@"kASupp"] boolValue]) {
      return NO;
   } else { return _logos_orig$_ungrouped$Player$suppressGuns(self, _cmd); }
}

static void _logos_method$_ungrouped$Player$setSuppressGuns$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$setSuppressGuns$(self, _cmd, arg1);
    if ([[prefkey:@"kASupp"] boolValue]) {
      arg1 = NO;
      _logos_orig$_ungrouped$Player$setSuppressGuns$(self, _cmd, arg1);
   } else { _logos_orig$_ungrouped$Player$setSuppressGuns$(self, _cmd, arg1); }
}

static bool _logos_method$_ungrouped$Player$suppressMining(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Player$suppressMining(self, _cmd);
    if ([[prefkey:@"kASupp"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$Player$suppressMining(self, _cmd); }
}

static void _logos_method$_ungrouped$Player$setSuppressFlight$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$setSuppressFlight$(self, _cmd, arg1);
    if ([[prefkey:@"kASupp"] boolValue]) {
      arg1 = NO;
      _logos_orig$_ungrouped$Player$setSuppressFlight$(self, _cmd, arg1);
    } else { _logos_orig$_ungrouped$Player$setSuppressFlight$(self, _cmd, arg1); }
}

static void _logos_method$_ungrouped$Player$setSuppressMining$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$setSuppressMining$(self, _cmd, arg1);
    if ([[prefkey:@"kASupp"] boolValue]) {
      arg1 = NO;
      _logos_orig$_ungrouped$Player$setSuppressMining$(self, _cmd, arg1);
    } else { _logos_orig$_ungrouped$Player$setSuppressMining$(self, _cmd, arg1); }
}


static bool _logos_method$_ungrouped$Player$skilledToMine$(_LOGOS_SELF_TYPE_NORMAL Player* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    prefinit;
    _logos_orig$_ungrouped$Player$skilledToMine$(self, _cmd, arg1);
    if ([[prefkey:@"kPhase"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$Player$skilledToMine$(self, _cmd, arg1); }
}





static int _logos_method$_ungrouped$WorldZone$adminLoad(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$WorldZone$adminLoad(self, _cmd);
    if ([[prefkey:@"kNoClip"] boolValue]) {
      return 1;
    } else { return _logos_orig$_ungrouped$WorldZone$adminLoad(self, _cmd); }
}


static bool _logos_method$_ungrouped$WorldZone$isProtected(_LOGOS_SELF_TYPE_NORMAL WorldZone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$WorldZone$isProtected(self, _cmd);
    if ([[prefkey:@"kPhase"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$WorldZone$isProtected(self, _cmd); }
}





static bool _logos_method$_ungrouped$BaseBlock$protectedByField(_LOGOS_SELF_TYPE_NORMAL BaseBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$BaseBlock$protectedByField(self, _cmd);
    if ([[prefkey:@"kPhase"] boolValue]) {
      return NO;
    } else { return _logos_orig$_ungrouped$BaseBlock$protectedByField(self, _cmd); }
}





static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayerOrFollower(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower(self, _cmd);
    if ([[prefkey:@"kPhase"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower(self, _cmd); }
}

static bool _logos_method$_ungrouped$MetaBlock$ownedByPlayer(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$MetaBlock$ownedByPlayer(self, _cmd);
    if ([[prefkey:@"kPhase"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$MetaBlock$ownedByPlayer(self, _cmd); }
}


static float _logos_method$_ungrouped$MetaBlock$temperature(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$MetaBlock$temperature(self, _cmd);
    if ([[prefkey:@"kSurvival"] boolValue]) {
      return 0;
    } else { return _logos_orig$_ungrouped$MetaBlock$temperature(self, _cmd); }
}

static void _logos_method$_ungrouped$MetaBlock$setTemperature$(_LOGOS_SELF_TYPE_NORMAL MetaBlock* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    prefinit;
    _logos_orig$_ungrouped$MetaBlock$setTemperature$(self, _cmd, arg1);
    if ([[prefkey:@"kSurvival"] boolValue]) {
      arg1 = 0;
      _logos_orig$_ungrouped$MetaBlock$setTemperature$(self, _cmd, arg1);
    } else { _logos_orig$_ungrouped$MetaBlock$setTemperature$(self, _cmd, arg1); }
}





static double _logos_method$_ungrouped$CCSpeed$speed(_LOGOS_SELF_TYPE_NORMAL CCSpeed* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$CCSpeed$speed(self, _cmd);
    if ([[prefkey:@"kSpeed"] boolValue]) {
      return 1.9999999;
    } else { return _logos_orig$_ungrouped$CCSpeed$speed(self, _cmd); }
}





static bool _logos_method$_ungrouped$Item$isMiningTool(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  prefinit;
  _logos_orig$_ungrouped$Item$isMiningTool(self, _cmd);
  if ([[prefkey:@"kMineLikeboonkgang"] boolValue]) {
    return YES;
  } else { return _logos_orig$_ungrouped$Item$isMiningTool(self, _cmd); }
}


static float _logos_method$_ungrouped$Item$power(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Item$power(self, _cmd);
    if ([[prefkey:@"kPowerMine"] boolValue]) {
      return 4.9999999;
    } else { return _logos_orig$_ungrouped$Item$power(self, _cmd); }
}


static float _logos_method$_ungrouped$Item$damageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Item$damageAmount(self, _cmd);
    if ([[prefkey:@"kDamage"] boolValue]) {
      return 1.7976931348623157E+308;
    } else { return _logos_orig$_ungrouped$Item$damageAmount(self, _cmd); }
}

static float _logos_method$_ungrouped$Item$fieldDamageAmount(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Item$fieldDamageAmount(self, _cmd);
    if ([[prefkey:@"kDamage"] boolValue]) {
      return 1.7976931348623157E+308;
    } else { return _logos_orig$_ungrouped$Item$fieldDamageAmount(self, _cmd); }
}

static float _logos_method$_ungrouped$Item$damageRange(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Item$damageRange(self, _cmd);
    if ([[prefkey:@"kDamage"] boolValue]) {
      return 1.7976931348623157E+308;
    } else { return _logos_orig$_ungrouped$Item$damageRange(self, _cmd); }
}


static bool _logos_method$_ungrouped$Item$invulnerable(_LOGOS_SELF_TYPE_NORMAL Item* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$Item$invulnerable(self, _cmd);
    if ([[prefkey:@"kInvincibility"] boolValue]) {
      return YES;
    } else { return _logos_orig$_ungrouped$Item$invulnerable(self, _cmd); }
}





static float _logos_method$_ungrouped$EntityConfig$collisionDamageAmount(_LOGOS_SELF_TYPE_NORMAL EntityConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    prefinit;
    _logos_orig$_ungrouped$EntityConfig$collisionDamageAmount(self, _cmd);
    if ([[prefkey:@"kInvincibility"] boolValue]) {
      return 0;
    } else { return _logos_orig$_ungrouped$EntityConfig$collisionDamageAmount(self, _cmd); }
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$Lightmapper = objc_getClass("Lightmapper"); MSHookMessageEx(_logos_class$_ungrouped$Lightmapper, @selector(isHazy), (IMP)&_logos_method$_ungrouped$Lightmapper$isHazy, (IMP*)&_logos_orig$_ungrouped$Lightmapper$isHazy);MSHookMessageEx(_logos_class$_ungrouped$Lightmapper, @selector(illuminateBlocks:), (IMP)&_logos_method$_ungrouped$Lightmapper$illuminateBlocks$, (IMP*)&_logos_orig$_ungrouped$Lightmapper$illuminateBlocks$);MSHookMessageEx(_logos_class$_ungrouped$Lightmapper, @selector(setDefaultBaseLight:), (IMP)&_logos_method$_ungrouped$Lightmapper$setDefaultBaseLight$, (IMP*)&_logos_orig$_ungrouped$Lightmapper$setDefaultBaseLight$);Class _logos_class$_ungrouped$GameCommand = objc_getClass("GameCommand"); Class _logos_metaclass$_ungrouped$GameCommand = object_getClass(_logos_class$_ungrouped$GameCommand); MSHookMessageEx(_logos_metaclass$_ungrouped$GameCommand, @selector(consoleRequiresAdmin), (IMP)&_logos_meta_method$_ungrouped$GameCommand$consoleRequiresAdmin, (IMP*)&_logos_meta_orig$_ungrouped$GameCommand$consoleRequiresAdmin);Class _logos_class$_ungrouped$GameCommandSay = objc_getClass("GameCommandSay"); Class _logos_metaclass$_ungrouped$GameCommandSay = object_getClass(_logos_class$_ungrouped$GameCommandSay); MSHookMessageEx(_logos_metaclass$_ungrouped$GameCommandSay, @selector(consoleRequiresAdmin), (IMP)&_logos_meta_method$_ungrouped$GameCommandSay$consoleRequiresAdmin, (IMP*)&_logos_meta_orig$_ungrouped$GameCommandSay$consoleRequiresAdmin);Class _logos_class$_ungrouped$GameCommandPlayerDie = objc_getClass("GameCommandPlayerDie"); Class _logos_metaclass$_ungrouped$GameCommandPlayerDie = object_getClass(_logos_class$_ungrouped$GameCommandPlayerDie); MSHookMessageEx(_logos_metaclass$_ungrouped$GameCommandPlayerDie, @selector(consoleRequiresAdmin), (IMP)&_logos_meta_method$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin, (IMP*)&_logos_meta_orig$_ungrouped$GameCommandPlayerDie$consoleRequiresAdmin);Class _logos_class$_ungrouped$GameCommandDebug = objc_getClass("GameCommandDebug"); Class _logos_metaclass$_ungrouped$GameCommandDebug = object_getClass(_logos_class$_ungrouped$GameCommandDebug); MSHookMessageEx(_logos_metaclass$_ungrouped$GameCommandDebug, @selector(consoleRequiresAdmin), (IMP)&_logos_meta_method$_ungrouped$GameCommandDebug$consoleRequiresAdmin, (IMP*)&_logos_meta_orig$_ungrouped$GameCommandDebug$consoleRequiresAdmin);Class _logos_class$_ungrouped$Entity = objc_getClass("Entity"); MSHookMessageEx(_logos_class$_ungrouped$Entity, @selector(grounded), (IMP)&_logos_method$_ungrouped$Entity$grounded, (IMP*)&_logos_orig$_ungrouped$Entity$grounded);MSHookMessageEx(_logos_class$_ungrouped$Entity, @selector(setGrounded:), (IMP)&_logos_method$_ungrouped$Entity$setGrounded$, (IMP*)&_logos_orig$_ungrouped$Entity$setGrounded$);Class _logos_class$_ungrouped$FlurryUtil = objc_getClass("FlurryUtil"); Class _logos_metaclass$_ungrouped$FlurryUtil = object_getClass(_logos_class$_ungrouped$FlurryUtil); MSHookMessageEx(_logos_metaclass$_ungrouped$FlurryUtil, @selector(deviceIsJailbroken), (IMP)&_logos_meta_method$_ungrouped$FlurryUtil$deviceIsJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$FlurryUtil$deviceIsJailbroken);Class _logos_class$_ungrouped$PFDevice = objc_getClass("PFDevice"); MSHookMessageEx(_logos_class$_ungrouped$PFDevice, @selector(isJailbroken), (IMP)&_logos_method$_ungrouped$PFDevice$isJailbroken, (IMP*)&_logos_orig$_ungrouped$PFDevice$isJailbroken);Class _logos_class$_ungrouped$Player = objc_getClass("Player"); MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(activeItemIsTool), (IMP)&_logos_method$_ungrouped$Player$activeItemIsTool, (IMP*)&_logos_orig$_ungrouped$Player$activeItemIsTool);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(zoomModifier), (IMP)&_logos_method$_ungrouped$Player$zoomModifier, (IMP*)&_logos_orig$_ungrouped$Player$zoomModifier);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(karmaIsPoor), (IMP)&_logos_method$_ungrouped$Player$karmaIsPoor, (IMP*)&_logos_orig$_ungrouped$Player$karmaIsPoor);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(karma), (IMP)&_logos_method$_ungrouped$Player$karma, (IMP*)&_logos_orig$_ungrouped$Player$karma);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setKarma:), (IMP)&_logos_method$_ungrouped$Player$setKarma$, (IMP*)&_logos_orig$_ungrouped$Player$setKarma$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setAwesomeMode:), (IMP)&_logos_method$_ungrouped$Player$setAwesomeMode$, (IMP*)&_logos_orig$_ungrouped$Player$setAwesomeMode$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(admin), (IMP)&_logos_method$_ungrouped$Player$admin, (IMP*)&_logos_orig$_ungrouped$Player$admin);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(hasSteam), (IMP)&_logos_method$_ungrouped$Player$hasSteam, (IMP*)&_logos_orig$_ungrouped$Player$hasSteam);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(steamCooldownDuration), (IMP)&_logos_method$_ungrouped$Player$steamCooldownDuration, (IMP*)&_logos_orig$_ungrouped$Player$steamCooldownDuration);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(miningSpeed), (IMP)&_logos_method$_ungrouped$Player$miningSpeed, (IMP*)&_logos_orig$_ungrouped$Player$miningSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(swimmingSpeed), (IMP)&_logos_method$_ungrouped$Player$swimmingSpeed, (IMP*)&_logos_orig$_ungrouped$Player$swimmingSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(climbingSpeed), (IMP)&_logos_method$_ungrouped$Player$climbingSpeed, (IMP*)&_logos_orig$_ungrouped$Player$climbingSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(runningSpeed), (IMP)&_logos_method$_ungrouped$Player$runningSpeed, (IMP*)&_logos_orig$_ungrouped$Player$runningSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(flyingSpeed), (IMP)&_logos_method$_ungrouped$Player$flyingSpeed, (IMP*)&_logos_orig$_ungrouped$Player$flyingSpeed);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(aimSteadiness), (IMP)&_logos_method$_ungrouped$Player$aimSteadiness, (IMP*)&_logos_orig$_ungrouped$Player$aimSteadiness);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(damage:amount:attacker:), (IMP)&_logos_method$_ungrouped$Player$damage$amount$attacker$, (IMP*)&_logos_orig$_ungrouped$Player$damage$amount$attacker$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(gunEfficiency), (IMP)&_logos_method$_ungrouped$Player$gunEfficiency, (IMP*)&_logos_orig$_ungrouped$Player$gunEfficiency);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(canEvadePrecipitationDamage:), (IMP)&_logos_method$_ungrouped$Player$canEvadePrecipitationDamage$, (IMP*)&_logos_orig$_ungrouped$Player$canEvadePrecipitationDamage$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(canBeDamaged), (IMP)&_logos_method$_ungrouped$Player$canBeDamaged, (IMP*)&_logos_orig$_ungrouped$Player$canBeDamaged);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(environmentalDamage:amount:), (IMP)&_logos_method$_ungrouped$Player$environmentalDamage$amount$, (IMP*)&_logos_orig$_ungrouped$Player$environmentalDamage$amount$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(didCollideWithEntity:), (IMP)&_logos_method$_ungrouped$Player$didCollideWithEntity$, (IMP*)&_logos_orig$_ungrouped$Player$didCollideWithEntity$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(didCollideFeetWithEntity:), (IMP)&_logos_method$_ungrouped$Player$didCollideFeetWithEntity$, (IMP*)&_logos_orig$_ungrouped$Player$didCollideFeetWithEntity$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(slowForEntity:), (IMP)&_logos_method$_ungrouped$Player$slowForEntity$, (IMP*)&_logos_orig$_ungrouped$Player$slowForEntity$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(colliding), (IMP)&_logos_method$_ungrouped$Player$colliding, (IMP*)&_logos_orig$_ungrouped$Player$colliding);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(suppressFlight), (IMP)&_logos_method$_ungrouped$Player$suppressFlight, (IMP*)&_logos_orig$_ungrouped$Player$suppressFlight);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(suppressGuns), (IMP)&_logos_method$_ungrouped$Player$suppressGuns, (IMP*)&_logos_orig$_ungrouped$Player$suppressGuns);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setSuppressGuns:), (IMP)&_logos_method$_ungrouped$Player$setSuppressGuns$, (IMP*)&_logos_orig$_ungrouped$Player$setSuppressGuns$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(suppressMining), (IMP)&_logos_method$_ungrouped$Player$suppressMining, (IMP*)&_logos_orig$_ungrouped$Player$suppressMining);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setSuppressFlight:), (IMP)&_logos_method$_ungrouped$Player$setSuppressFlight$, (IMP*)&_logos_orig$_ungrouped$Player$setSuppressFlight$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(setSuppressMining:), (IMP)&_logos_method$_ungrouped$Player$setSuppressMining$, (IMP*)&_logos_orig$_ungrouped$Player$setSuppressMining$);MSHookMessageEx(_logos_class$_ungrouped$Player, @selector(skilledToMine:), (IMP)&_logos_method$_ungrouped$Player$skilledToMine$, (IMP*)&_logos_orig$_ungrouped$Player$skilledToMine$);Class _logos_class$_ungrouped$WorldZone = objc_getClass("WorldZone"); MSHookMessageEx(_logos_class$_ungrouped$WorldZone, @selector(adminLoad), (IMP)&_logos_method$_ungrouped$WorldZone$adminLoad, (IMP*)&_logos_orig$_ungrouped$WorldZone$adminLoad);MSHookMessageEx(_logos_class$_ungrouped$WorldZone, @selector(isProtected), (IMP)&_logos_method$_ungrouped$WorldZone$isProtected, (IMP*)&_logos_orig$_ungrouped$WorldZone$isProtected);Class _logos_class$_ungrouped$BaseBlock = objc_getClass("BaseBlock"); MSHookMessageEx(_logos_class$_ungrouped$BaseBlock, @selector(protectedByField), (IMP)&_logos_method$_ungrouped$BaseBlock$protectedByField, (IMP*)&_logos_orig$_ungrouped$BaseBlock$protectedByField);Class _logos_class$_ungrouped$MetaBlock = objc_getClass("MetaBlock"); MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(ownedByPlayerOrFollower), (IMP)&_logos_method$_ungrouped$MetaBlock$ownedByPlayerOrFollower, (IMP*)&_logos_orig$_ungrouped$MetaBlock$ownedByPlayerOrFollower);MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(ownedByPlayer), (IMP)&_logos_method$_ungrouped$MetaBlock$ownedByPlayer, (IMP*)&_logos_orig$_ungrouped$MetaBlock$ownedByPlayer);MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(temperature), (IMP)&_logos_method$_ungrouped$MetaBlock$temperature, (IMP*)&_logos_orig$_ungrouped$MetaBlock$temperature);MSHookMessageEx(_logos_class$_ungrouped$MetaBlock, @selector(setTemperature:), (IMP)&_logos_method$_ungrouped$MetaBlock$setTemperature$, (IMP*)&_logos_orig$_ungrouped$MetaBlock$setTemperature$);Class _logos_class$_ungrouped$CCSpeed = objc_getClass("CCSpeed"); MSHookMessageEx(_logos_class$_ungrouped$CCSpeed, @selector(speed), (IMP)&_logos_method$_ungrouped$CCSpeed$speed, (IMP*)&_logos_orig$_ungrouped$CCSpeed$speed);Class _logos_class$_ungrouped$Item = objc_getClass("Item"); MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(isMiningTool), (IMP)&_logos_method$_ungrouped$Item$isMiningTool, (IMP*)&_logos_orig$_ungrouped$Item$isMiningTool);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(power), (IMP)&_logos_method$_ungrouped$Item$power, (IMP*)&_logos_orig$_ungrouped$Item$power);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(damageAmount), (IMP)&_logos_method$_ungrouped$Item$damageAmount, (IMP*)&_logos_orig$_ungrouped$Item$damageAmount);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(fieldDamageAmount), (IMP)&_logos_method$_ungrouped$Item$fieldDamageAmount, (IMP*)&_logos_orig$_ungrouped$Item$fieldDamageAmount);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(damageRange), (IMP)&_logos_method$_ungrouped$Item$damageRange, (IMP*)&_logos_orig$_ungrouped$Item$damageRange);MSHookMessageEx(_logos_class$_ungrouped$Item, @selector(invulnerable), (IMP)&_logos_method$_ungrouped$Item$invulnerable, (IMP*)&_logos_orig$_ungrouped$Item$invulnerable);Class _logos_class$_ungrouped$EntityConfig = objc_getClass("EntityConfig"); MSHookMessageEx(_logos_class$_ungrouped$EntityConfig, @selector(collisionDamageAmount), (IMP)&_logos_method$_ungrouped$EntityConfig$collisionDamageAmount, (IMP*)&_logos_orig$_ungrouped$EntityConfig$collisionDamageAmount);} }
#line 553 "Tweak.x"
