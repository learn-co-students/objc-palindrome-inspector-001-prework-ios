//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

// Objectives:
// 1. Use a familiar problem to introduce yourself to Xcode's testing interface.
// 2. Compare the "expected" versus the "got" of each test failure to gain insight towards how to solve the problem.
// 3. Solve the problem step by step, relying on the tests to ensure yourself of forward progress.
// 4. Verify that Learn detected your successful solution by looking at the "Local Build" light.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[@",", @";", @":", @"!", @"."];
    NSString *noPunctuation = [string copy];
    for (NSUInteger i=0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        noPunctuation = [noPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *noSpace = [noPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [noSpace lowercaseString];
    NSString *stringReversal = [self stringByReversingString:lowercase];
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:stringReversal];
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i>0; i--) {
        NSUInteger index = i-1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}


@end
