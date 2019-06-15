#import <spawn.h>
#import <CepheiPrefs/HBRootListController.h>
#import <Cephei/HBPreferences.h>
#import "RPYRootListController.h"

@implementation RPYRootListController : HBListController

- (NSArray *) specifiers {
		if (!_specifiers) {
			_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
		}

		return _specifiers;
}

- (void) killDeepworld {
		pid_t pid;
		int status;
		const char* args[] = {"killall", "-9", "Deepworld", nil};
		posix_spawn(&pid, "/usr/bin/killall", nil, nil, (char* const*)args, nil);
		waitpid(pid, &status, WEXITED);
}

@end