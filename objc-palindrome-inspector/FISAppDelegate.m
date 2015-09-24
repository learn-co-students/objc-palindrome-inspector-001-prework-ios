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

-(BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[ @",", @".", @"!", @";", @"?"];
    
    NSString *lowercase = [string lowercaseString];
    
    NSString *spaceless = [lowercase stringByReplacingOccurrencesOfString:@" "
                                                               withString:@""];
    NSString *withoutPunctuations = [spaceless copy];
    for (NSString *punctuation in punctuations) {
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuation
                                                                             withString:@""];
    }
    
    NSString *reverseString = [self stringByReversingString:withoutPunctuations];
    BOOL result = [reverseString isEqualToString:withoutPunctuations];
    return result;
}

-(NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    return result;
}

@end
