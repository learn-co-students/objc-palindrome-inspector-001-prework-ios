//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */
- (BOOL)stringIsPalindrome:(NSString *)string;

// declare stringIsPalindrome method which takes one NSString argument called string and returns a BOOL

- (NSString *)stringByReversingString:(NSString *)string;

// declare stringByReversingString method which takes one NSString argument called string and returns an NSString

@end
