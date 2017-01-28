//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */
//an instance method to accept a NSString called string as an argument and returns a BOOL
// -(ReturnType)MethodName:(String object variable)instancevariable:

- (BOOL)stringIsPalindrome:(NSString *)string;

//NSString return type uses a * because it is an object variable,
//an instance method to accept a NSString argument called string  and returns an NSString..
//-(ReturnType)MethodName:(ArgumentType)ArgmentName;


- (NSString *)stringByReversingString:(NSString *)string;

@end
