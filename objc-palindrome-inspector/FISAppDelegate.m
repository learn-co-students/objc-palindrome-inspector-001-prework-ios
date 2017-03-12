//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string; {
    
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    NSString *copy = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        
        NSString *punctuation = punctuations[i];
        copy = [copy stringByReplacingOccurrencesOfString:punctuation withString:@""];
        
    
    }
    

    NSString *spaceless = [copy stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
//While the lab requests to add functionality to stringIsPalindrome to handle uppercase strings and then implement to remove spaces, it turns out that in order for the tests to pass you have to remove the spaces first.

    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
//Naturally I left out the BOOL, having to refer to Palindrome Detector to recall I had to utilize it. Don't make this mistake!
    
    
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string; {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i --) {
        
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    
    return result;
}

/**
 
 * Implement your methods here.
 
 */

@end
