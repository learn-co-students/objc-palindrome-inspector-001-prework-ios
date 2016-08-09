//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *palindrome = @"palindrome";
    BOOL reversed = [self stringIsPalindrome:palindrome];
    NSLog(@"%d : %@", reversed, palindrome);
    
    NSString *bob = @"Bob.!,";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    return YES;
}

-(BOOL)stringIsPalindrome:(NSString *)string{
    NSString *noPunctuationString = string;
    NSArray *punctuation = @[ @".", @",", @"!" ];
    for(NSUInteger i = 0; i < [punctuation count]; i++){
        noPunctuationString = [noPunctuationString stringByReplacingOccurrencesOfString:punctuation[i] withString:@""];
        //NSLog(@"No Punc: %@", noPunctuationString);
    }
    
    NSString *noSpaceString = [noPunctuationString stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercaseString = [noSpaceString lowercaseString];
    NSString *reversedString = [self stringByReversingString:lowercaseString];
    //NSLog(@"From Method %@", reversedString);
    
    
    if([reversedString isEqualToString:lowercaseString]){
        return YES;
    } else {
        return NO;
    }
}

-(NSString *)stringByReversingString:(NSString *)string{
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

@end
