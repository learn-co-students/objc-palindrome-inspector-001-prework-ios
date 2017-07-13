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
    
    NSArray *punctuations  = @[ @".", @",", @"!", @"?", @":", @";" ];
    
    NSString *withoutPunctuations = [string copy];
    
    for (NSUInteger i = 0; i< [punctuations count]; i++) {
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
    
    }
    
    NSString *spaces = [withoutPunctuations stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaces lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL ifpalindrome = [lowercase isEqualToString:reverse];
    
    return ifpalindrome;
    
}

-(NSString *) stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
