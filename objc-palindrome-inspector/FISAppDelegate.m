//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome: (NSString *)string {
    
    NSArray *punctuations = @[@",", @".", @":", @";", @"!", @"?"];
    for (NSString *punctuation in punctuations) {
        string = [string stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string lowercaseString];
    NSString *reverseString = [self stringByReversingString:string];
    BOOL isPalindrome = [string isEqualToString:reverseString];
    
    return isPalindrome;
}

- (NSString *)stringByReversingString: (NSString *)string {
    
    NSMutableString *reverseString = [NSMutableString string];
    NSUInteger index = [string length];
    
    while (index > 0) {
        index--;
        NSRange subStringRange = NSMakeRange(index, 1);
        [reverseString appendString:[string substringWithRange:subStringRange]];
    }
    
    return reverseString;
}

@end
