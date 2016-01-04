//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
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

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuation = @[@".", @",", @"!", @"?", @"'"];
    NSString *stringWithoutPunctuation = [string copy];
    for (NSUInteger i = 0; i < [punctuation count]; i++) {
        stringWithoutPunctuation = [stringWithoutPunctuation stringByReplacingOccurrencesOfString:punctuation[i] withString:@""];
    }
    NSString *stringWithNoSpaces = [stringWithoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [stringWithNoSpaces lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    return [lowercase isEqualToString:reverse];
}

@end
