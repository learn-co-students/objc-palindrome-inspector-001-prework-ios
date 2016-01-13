//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *withoutPunctuation = [string copy];
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @";", @":", @"'"];
    for (NSUInteger i = 0; i < [punctuations count]; i ++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
        }
    NSString *withoutSpaces = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [withoutSpaces lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    BOOL isItAPalindrome = [lowercase isEqualToString:reverse];
    
    return isItAPalindrome;
}


- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i --) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
        
    }
    
    return result;
}

@end
