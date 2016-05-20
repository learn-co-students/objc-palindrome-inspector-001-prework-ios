//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[@".", @",", @";", @":", @"!", @" "];
    NSString *lowercase = [string lowercaseString];
    NSString *withoutPunctOrSpace = lowercase;
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        withoutPunctOrSpace = [withoutPunctOrSpace stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
    }
    NSString *reverse = [self stringByReversingString:withoutPunctOrSpace];
    return [withoutPunctOrSpace isEqualToString:reverse];
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
