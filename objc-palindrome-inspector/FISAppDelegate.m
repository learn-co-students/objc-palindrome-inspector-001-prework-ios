//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    
    // Space
    NSString *sanitizedString = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    // Punctuation
    NSArray *punctuations = @[@".",@",",@"!",@"?",@"-",@"_",@"/",@"|"];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        sanitizedString = [sanitizedString stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
    }
    
    
    // Caps
    sanitizedString = [sanitizedString lowercaseString];
    
    NSString *reversed = [self stringByReversingString:sanitizedString];
    
    BOOL isPalindrome = [sanitizedString isEqualToString:reversed];
    
    return isPalindrome;
    
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
