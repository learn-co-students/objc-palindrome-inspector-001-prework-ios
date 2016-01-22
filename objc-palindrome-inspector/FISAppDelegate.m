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

-(BOOL)stringIsPalindrome:(NSString *)string{
    
    //take out punctuations
    
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    NSString *withoutPunctuations = [string copy];
    
    for(NSUInteger i = 0; i < [punctuations count]; i++){
        NSString *punctuation = punctuations[i];
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    //take out spaces
    
    NSString *withoutSpaces = [withoutPunctuations stringByReplacingOccurrencesOfString:@" " withString: @""];
    
    //lowercase
    
    NSString *lowercase = [withoutSpaces lowercaseString];
    
    //reverse string
    
    NSString *reverse = [self stringByReversingString: lowercase];
    
    BOOL isPalindrome = [lowercase isEqualToString:reverse];
    
    return isPalindrome;
    
    
    
}

-(NSString *)stringByReversingString:(NSString *)string{
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--){
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
