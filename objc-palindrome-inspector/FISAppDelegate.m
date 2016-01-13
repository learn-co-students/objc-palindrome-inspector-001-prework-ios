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
    
    // lowercase
    NSString *downcase = [string lowercaseString];

    // remove spaces and punctuation (don't see a need for separate steps)
    NSString *noSpacesOrPunc = downcase;
    NSArray *spaceAndPunctuation = @[@" ", @".", @",", @"'", @":", @";", @"!", @"?"];
    
    for (NSUInteger i = [spaceAndPunctuation count]; i > 0; i--) {
        NSString *punc = spaceAndPunctuation[i-1];
        noSpacesOrPunc = [noSpacesOrPunc stringByReplacingOccurrencesOfString:punc withString:@""];
    }
    
    // reverse the spaceless, punctuationless, lowercase version of the string, and compare
    NSString *reverse = [self stringByReversingString:noSpacesOrPunc];
    BOOL result = [reverse isEqualToString:noSpacesOrPunc];
    
    return result;
}

- (NSString *) stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i --) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end
