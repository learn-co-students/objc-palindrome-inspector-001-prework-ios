//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string; {
    
    BOOL palindrome = 0;
    
    NSArray *punctuations = @[@"!", @".", @",", @";", @":"];
    NSString *withoutPunctuation = [string copy];
    
    for (NSString *punctuation in punctuations) {
// The for-in loop is a concept discussed further in the iOS Learn curriculum. That loop made more sense to me than a traditional for loop which I believe is what the lab was originally asking for.
        
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    
    }
// The trick with this lab is the order they ask you implement methods is incorrect. You have to reorganize when you take out the punctuations, spaces & lowercase the string.
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverseString = [self stringByReversingString:lowercase];

             NSLog(@"\n\n\n\n\n\n%@\n\n\n\n\n\n", reverseString);
        
        if  ([lowercase isEqualToString:reverseString]) {
            
            palindrome = 1;
        }
    
    return palindrome;
}

- (NSString *)stringByReversingString:(NSString *)string; {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i --) {
        
        NSUInteger index = i - 1; // This represents the final item in an array or in this example final piece of a string.
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c]; // This is appending the string backwards to our empty NSString *result.
    }
    
    return result;
}

// I felt really confident completing this lab, the only thing that threw me off is having to reorganize what type of strings the method was able to handle.

@end
