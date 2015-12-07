//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray  *englishFun = @[ @".", @"!", @",", @"?", @";", @":"];
    NSString *deletingTheFun = [string copy];
    for (NSUInteger i = 0; i < [englishFun count]; i++) {
        NSString *delEngFun = englishFun[i];
        deletingTheFun = [deletingTheFun stringByReplacingOccurrencesOfString:delEngFun withString:@""];
    }
    NSString *spaceDelete = [deletingTheFun stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowerCase = [spaceDelete lowercaseString];
    NSString *reverse = [self stringByReversingString:lowerCase];
   
    
    BOOL stringIsEqualToReverse = [lowerCase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
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
