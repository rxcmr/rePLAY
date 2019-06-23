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
    NSTask *task = [[[NSTask alloc] init] autorelease];
    [task setLaunchPath:@"/usr/bin/killall"];
    [task setArguments:[NSArray arrayWithObjects:@"Deepworld", nil]];
    [task launch];
}


- (void) respring:(id)sender {
	NSFileManager *const fileManager = [NSFileManager defaultManager];
	NSString *path = @"/usr/bin/sbreload";
	NSTask *task = [[[NSTask alloc] init] autorelease];
    if ([fileManager fileExistsAtPath:path]) {
      [task setLaunchPath:path];
      [task setArguments:[NSArray arrayWithObjects:@"", nil]];
      [task launch];
    } else {
	    [task setLaunchPath:@"/usr/bin/sbreload"];
    	[task setArguments:[NSArray arrayWithObjects:@"-9", @"backboardd", nil]];
      [task launch];
    }
}
@end
