#include <spawn.h>
#include "XXXRootListController.h"

@implementation XXXRootListController

-(NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)killDeepworld {
	pid_t pid;
	int status;
	const char* args[] = {"killall", "-9", "Deepworld", nil};
	posix_spawn(&pid, "/usr/bin/killall", nil, nil, (char* const*)args, nil);
	waitpid(pid, &status, WEXITED);
}

@end
