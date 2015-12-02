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

    - (BOOL)stringIsPalindrome:(NSString *)string {
        NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];                  //punctuation
        NSString *withoutPunctuation = [string copy];
        
        for (NSUInteger i = 0; i < [punctuations count]; i++) {                         //loop
            NSString *punctuation = punctuations[i];                                     //relates to array
            withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
        }
        
        NSString *spaceless = [string stringByReplacingOccurrencesOfString:@" " withString:@""]; // method to remove spaces
        
        NSString *lowercase = [spaceless lowercaseString];                       //makes everything lowcs + edited to spaceless
        
        NSString *reverse = [self stringByReversingString:string];            // reversed version of original string
        
        BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];    //bool equation of original to reversed string
        
        return stringIsEqualToReverse;                                       //passes test or not
    }

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome =[self stringIsPalindrome: racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    NSString *bob =@"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome: bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIspalindrome = [self stringIsPalindrome: kanakanak];
    NSLog(@"%d : %@", kanakanakIspalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIspalindrome = [self stringIsPalindrome: aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIspalindrome, aibohphobia);
    
    NSString *neverodd = @"never odd or even";
    BOOL neveroddIsPalindrome = [self stringIsPalindrome: neverodd];
    NSLog(@"%d : %@", neveroddIsPalindrome, neverodd);
    
    NSString *iPreferPi = @"I prefer Pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome: iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *remoteElf = @"Flee to me, remote elf.";
    BOOL remoteElfIsPalindrome = [self stringIsPalindrome: remoteElf];
    NSLog(@"%d : %@", remoteElfIsPalindrome, remoteElf);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome: norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on!";
    BOOL papayaWarPalindrome = [self stringIsPalindrome: papayaWar];
    NSLog(@"%d : %@", papayaWarPalindrome, papayaWar);

}
@end
