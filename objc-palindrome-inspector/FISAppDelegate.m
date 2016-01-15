//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate
//return type of BOOL
//application, didFinishLaunchingWithOptions are Method Names
//UIApplication argument object...internall named, application
//NSDictionary argument optiosn...internally named, launchOptions
// { method body }
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
//1) racecar
}
/**
 * Implement your methods here.
 */

-(BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation= [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
     NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    //create new NSString variable called reverse 2 capture method call of stringByReversingString on self with the string lowercase argument variable submitted as the method argument:
    //Bool variable called stringIsEqualToReverse 2 capture return of method call isEqualToString on string with reverse submitted as arg
    NSString *lowercase = [spaceless lowercaseString]; //make spaceless string lowercase
    
    NSString *reverse = [self stringByReversingString:lowercase]; //reverse string
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse]; //check if original = reversed string
    return stringIsEqualToReverse;
    //spaces
    
    
};
//reversed string
-(NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
};
 
@end
