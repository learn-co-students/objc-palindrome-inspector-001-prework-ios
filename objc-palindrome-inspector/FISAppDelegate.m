//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string
{
    NSArray *punctuation = @[@".", @",", @"!", @"?", @";", @":"];
    
    string = [[string lowercaseString] stringByReplacingOccurrencesOfString:@" "
                                                                 withString:@""];
    
    for (NSUInteger i = 0; i < [punctuation count]; i++) {
        string = [string stringByReplacingOccurrencesOfString:punctuation[i]
                                                   withString:@""];
    }
    
    NSString *reverse = [self stringByReversingString:string];
    return [reverse isEqualToString:string];
}

- (NSString *)stringByReversingString:(NSString *)string
{
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
