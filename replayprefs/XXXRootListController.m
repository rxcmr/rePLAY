#include <spawn.h>
#include "XXXRootListController.h"

@implementation XXXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)killDeepworld {
	pid_t pid;
	int status;
	const char* args[] = {"killall", "-9", "Deepworld", NULL};
	posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
	waitpid(pid, &status, WEXITED); //wait untill the process completes (only if you need to do that)
}

@end
