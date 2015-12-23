//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL) stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[@".",@",",@"!",@"?"];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        string = [string stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
    }
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string lowercaseString];
    
    NSString *reversed = [self stringByReversingString:string];
    
    return [string isEqualToString:reversed];
}
- (NSString*)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
