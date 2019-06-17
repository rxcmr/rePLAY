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


- (void) respring:(id)sender {
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSString *path = @"/usr/bin/sbreload";

	if ([fileManager fileExistsAtPath:path]) {
	        pid_t pid;
	        const char* args[] = {"sbreload", nil, nil, nil};
	        posix_spawn(&pid, "/usr/bin/sbreload", nil, nil, (char* const*)args, nil);
		} else {
	        pid_t pid;
	        int status;
	        const char* args[] = {"killall", "-9", "SpringBoard", nil};
	        posix_spawn(&pid, "/usr/bin/killall", nil, nil, (char* const*)args, nil);
	        waitpid(pid, &status, WEXITED);
		}
}

@end
