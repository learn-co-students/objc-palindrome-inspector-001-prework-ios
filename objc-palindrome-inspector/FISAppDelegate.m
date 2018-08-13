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

- (BOOL)stringIsPalindrome: (NSString *)string;
{
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";"];
    NSString *noPunc = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++)
    {
        noPunc = [noPunc stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
        
    }
    NSString *nospace = [noPunc stringByReplacingOccurrencesOfString: @" " withString:@""];
    NSString *lowercase = [nospace lowercaseString];
    NSString *reverse = [self stringByReversingString: lowercase];
    BOOL result = [reverse isEqualToString:lowercase];
    return result;
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
