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

-(BOOL)stringIsPalindrome:(NSString *)string{
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";"];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        string = [string stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [ string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *uppercase = [ spaceless uppercaseString];
    
    NSString *reverse = [self stringByReversingString:uppercase];
    
    BOOL stringIsEqualToReverse = [ uppercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
    }

-(NSString *)stringByReversingString:(NSString *)string{
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [ string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end
