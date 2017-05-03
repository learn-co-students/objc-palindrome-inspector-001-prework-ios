//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

//my two methods declared stringIsPalindrome and stringByReversingString
- (BOOL) stringIsPalindrome: (NSString *)string;

- (NSString *) stringByReversingString: (NSString*)string;

@end
