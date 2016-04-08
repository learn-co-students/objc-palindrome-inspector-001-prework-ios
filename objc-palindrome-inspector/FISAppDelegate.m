//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *lowercaseString = [string lowercaseString];
    NSArray *punctuation = @[@" ", @",", @".", @";", @"!", @"?", @":"];
    NSString *stringWithoutPunctuation = [lowercaseString copy];
    
    for (NSUInteger i =0; i < [punctuation count]; i++) {
        stringWithoutPunctuation = [stringWithoutPunctuation stringByReplacingOccurrencesOfString:punctuation[i] withString:@""];
    }
    
    NSString *reversedString = [self stringByReversingString:stringWithoutPunctuation];
    
    if ([stringWithoutPunctuation isEqualToString:reversedString]) {
        return YES;
    }
    return NO;
}

-(NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        result = [result stringByAppendingFormat:@"%C",[string characterAtIndex:index]];
    }
    
    return result;
}

@end
