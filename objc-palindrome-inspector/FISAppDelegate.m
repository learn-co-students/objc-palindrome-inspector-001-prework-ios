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

-(BOOL) stringIsPalindrome:(NSString *)string {
    
    NSString *lowercase = [string lowercaseString];
    NSArray *excessChar = @[@"!", @"/", @".", @"-", @" ", @","];
    for (NSUInteger i = 0; i<excessChar.count; i++) {
       lowercase = [lowercase stringByReplacingOccurrencesOfString:excessChar[i] withString:@""];
    }
    NSString *reverse = [self stringByReversingString:lowercase];
    BOOL isPalindrome = [reverse isEqualToString:lowercase];
    
    
    
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
