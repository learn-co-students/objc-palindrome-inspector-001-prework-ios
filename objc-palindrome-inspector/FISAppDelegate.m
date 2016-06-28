//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray * punctuations = @[ @"!",@".",@",",@";",@":",@"?"];
    NSString * withoutPunctuation = [string copy];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString * punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString * spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString * lowerString = [spaceless lowercaseString];
    NSString * reverse = [self stringByReversingString:lowerString];
    BOOL stringIsEqualToReverse = [lowerString isEqualToString:reverse];
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString: (NSString *)string {
    
    NSString *final = @"";
    
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i-1;
        
        unichar c = [string characterAtIndex: index];
        final = [final stringByAppendingFormat: @"%C", c];
    }
    return final;
}


@end


