#import <Foundation/Foundation.h>

@interface NameManager : NSObject

- (NSString*)reverseName:(NSString*)sourceName error:(NSError**)error;

@end

@implementation NameManager

- (NSString*)reverseName:(NSString*)sourceName error:(NSError**)error;
{
	NSArray *nameElements = [sourceName componentsSeparatedByString:@" "];
	
	if ([nameElements count] == 2) {
		return [NSString stringWithFormat:@"%@ %@", [nameElements objectAtIndex:1], [nameElements objectAtIndex:0]];
	}
	
	NSError *localError = [NSError errorWithDomain:@"NameManagerError" code:9 userInfo:[NSDictionary dictionaryWithObject:@"The name consists of more than or less than two space-delimited elements." forKey:NSLocalizedDescriptionKey]];
	*error = localError;
	return nil;
}

@end

int main(int argc, char *argv[]) {
	@autoreleasepool {
		NSString *fullName = @"Simon";
		NSError * error = nil;
		NameManager *nameManager = [[NameManager alloc] init];
		NSString *modifiedName = [nameManager reverseName:fullName error:&error];
		if (modifiedName) {
			NSLog(@"%@", modifiedName);
		} else {
			NSLog(@"%@", [error localizedDescription]);
		}
	}
}