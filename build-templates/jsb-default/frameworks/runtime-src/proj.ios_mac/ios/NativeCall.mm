//
//  NativeCall.mm
//  DemoCallNative-mobile
//
//  Created by hungle on 9/22/18.
//

#import <Foundation/Foundation.h>
#import "AppController.h"

@interface NativeCall : NSObject
+(void)pushScore:(NSNumber *) score;
+(void) showLeaderboard;
+(void) authenticatePlayer;
@end

@implementation NativeCall
+(void)authenticatePlayer {
    AppController *appDelegate = (AppController *)[[UIApplication sharedApplication] delegate];
    [appDelegate authenticatePlayer];
}

+(void)pushScore:(NSNumber *) score {
    AppController *appDelegate = (AppController *)[[UIApplication sharedApplication] delegate];
    [appDelegate pushScore:score];
}

+(void)showLeaderboard {
    AppController *appDelegate = (AppController *)[[UIApplication sharedApplication] delegate];
    [appDelegate showLeaderboard];
}
@end
