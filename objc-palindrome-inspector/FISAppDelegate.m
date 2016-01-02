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

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *lowercase = [string lowercaseString];
    
    NSArray *punctuations = @[@",", @".", @"!", @";", @":", @"?"];
    NSString *noPunctuation = [lowercase copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuationString = punctuations[i];
        
        noPunctuation = [noPunctuation stringByReplacingOccurrencesOfString:punctuationString withString:@""];
    }
    
    NSString *noWhiteSpace = [noPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *reverse = [self stringByReversingString:noWhiteSpace];
    BOOL isReverse = [noWhiteSpace isEqualToString:reverse];
    
    return isReverse;
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
