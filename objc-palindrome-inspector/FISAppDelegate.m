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

- (BOOL) stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *stringNoPunctuation = [string copy];
    
    for (NSString *punctuation in punctuations) {
        stringNoPunctuation = [stringNoPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *stringAllLowerCase = [stringNoPunctuation lowercaseString];
    NSString *stringNoSpaces = [stringAllLowerCase stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *reversedString = [self stringByReversingString:stringNoSpaces];
    return [reversedString isEqualToString:stringNoSpaces];
}

- (NSString *) stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
