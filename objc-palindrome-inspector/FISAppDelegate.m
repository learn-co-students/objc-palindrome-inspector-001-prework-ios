//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *charactersToBeStripped = @[@".", @",", @"!", @"?", @" "];
    NSString *stripped = [string copy];
    
    for (NSUInteger i = 0; i < [charactersToBeStripped count]; i++) {
        stripped = [stripped stringByReplacingOccurrencesOfString:charactersToBeStripped[i] withString:@""];
    }
    
    NSString *lowercase = [stripped lowercaseString];
    NSString *reversed = [self stringByReversingString:lowercase];
    
    BOOL isPalindrome = [reversed isEqualToString:lowercase];
    
    return isPalindrome;
}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
