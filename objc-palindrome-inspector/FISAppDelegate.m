//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//Return YES if string is equal to its reverse, NO otherwise.
- (BOOL)stringIsPalindrome:(NSString *)string{
    
    string = [self removeUnwantedChars:[string lowercaseString]];
    
    NSString *reversed = [self stringByReversingString:string];
    
    return [string isEqualToString:reversed];
}

//Reverse the characters in string and return the resulting string.
- (NSString *)stringByReversingString:(NSString *)string{
        
        NSString *result = @"";
        
        for (NSUInteger i = [string length]; i > 0; i--) {
            NSUInteger index = i - 1;
            unichar c = [string characterAtIndex:index];
            result = [result stringByAppendingFormat:@"%c", c];
        }
        
        return result;
}

//Strip punctuation and spaces from string and return the resulting string.

- (NSString *)removeUnwantedChars:(NSString *)string{
    NSArray *unwantedChars = @[ @".", @",", @"!", @"?", @":", @";", @" " ];
    
    NSUInteger numUnwantedChars = [unwantedChars count];
    
    for(NSUInteger i = 0; i < numUnwantedChars; i++){
        NSString *unwanted = unwantedChars[i];
        string = [string stringByReplacingOccurrencesOfString:unwanted withString:@""];
    }
    
    return string;
}


@end
