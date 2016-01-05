//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *characterString = string;
    NSArray *punctuation = @[@",", @".", @"!"];
    for (NSUInteger i = 0; i < punctuation.count; i++) {
        characterString = [characterString stringByReplacingOccurrencesOfString:punctuation[i] withString:@""];
    }
    NSString *spacelessString = [characterString stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercaseString = [spacelessString lowercaseString];
    NSString *reversedString = [self stringByReversingString:lowercaseString];
    BOOL isPalindrome = [reversedString isEqualToString:lowercaseString];
    return isPalindrome;
    
    // Alternative Method
    
//    NSMutableCharacterSet *charactersToTrim = [[NSCharacterSet whitespaceCharacterSet] mutableCopy];
//    [charactersToTrim formUnionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
//    NSString *convertedString = [[[string componentsSeparatedByCharactersInSet:charactersToTrim] componentsJoinedByString:@""] lowercaseString];
//    NSUInteger length = [convertedString length];
//    
//    for (NSUInteger i = 0; i < ceilf(length/2.0f); i++) {
//        if ([convertedString characterAtIndex:i] != [convertedString characterAtIndex:length-i-1]) {
//            return NO;
//        }
//    }
//    
//    return YES;
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
