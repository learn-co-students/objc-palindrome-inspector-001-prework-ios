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

-(BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *withoutSpaces = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercased = [withoutSpaces lowercaseString];
    NSString *reversedString = [self stringByReversingString:lowercased];
    BOOL stringDidReverse = [lowercased isEqualToString:reversedString];
    
    return stringDidReverse;
    
}

-(NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end
