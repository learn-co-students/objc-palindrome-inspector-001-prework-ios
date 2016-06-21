//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *reverse = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger charIndexInString = i - 1;
        unichar c = [string characterAtIndex:charIndexInString];
        reverse = [reverse stringByAppendingFormat:@"%c", c];
    }
    
    return reverse;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *lowercase = [string lowercaseString];
    NSString *withoutSpacesOrPunctuation = [lowercase copy];
    NSString *reverse = @"";
    NSArray *spaceAndPunctuations = @[@" ", @".", @",", @":", @";", @"?", @"!"];
    BOOL isPalindrome = NO;
    
    for (NSUInteger i = 0; i < [spaceAndPunctuations count]; i++) {
        
        NSString *spaceOrPunctuation = spaceAndPunctuations[i];
        withoutSpacesOrPunctuation = [withoutSpacesOrPunctuation stringByReplacingOccurrencesOfString:spaceOrPunctuation withString:@""];
    }
    
    reverse = [self stringByReversingString:withoutSpacesOrPunctuation];
    
    if ([reverse isEqualToString:withoutSpacesOrPunctuation]) {
        
        isPalindrome = YES;
    }
    
    return isPalindrome;
}

@end
