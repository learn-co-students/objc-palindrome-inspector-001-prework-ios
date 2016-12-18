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
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    
    NSString *withoutPunctuation = [string copy];
    
    for (NSString *punctuation in punctuations) {
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *noSpaces = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowerCase = [noSpaces lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowerCase];
    
    BOOL stringIsPalindrome = [lowerCase isEqualToString:reverse];
    
    return stringIsPalindrome;
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
