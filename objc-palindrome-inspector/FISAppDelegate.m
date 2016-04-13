//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(BOOL)stringIsPalindrome:(NSString *)string{
   
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";" ];
    
    NSString *noPunctuations = [string copy];
    
    for (NSUInteger i = 0; i < punctuations.count; i++) {
        NSString *punctuation = punctuations[i];
        noPunctuations = [noPunctuations stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *noSpaceString = [noPunctuations stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    NSString *lowercase = noSpaceString.lowercaseString;
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL isEqualToReverse = [lowercase isEqualToString:reverse];
    
    return isEqualToReverse;
}

-(NSString *)stringByReversingString:(NSString *)string{
    
    NSString *result = @"";
    for (NSUInteger i = string.length; i>0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
    
}
@end
