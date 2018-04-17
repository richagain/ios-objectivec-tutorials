//
//  SampleProtocol.h
//  Delegates
//
//  Created by UBM on 17/4/18.
//  Copyright © 2018 MIMS. All rights reserved.
//

#import <Foundation/Foundation.h>
// Protocol definition starts here
@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end
// Protocol definition ends here
@interface SampleProtocol : NSObject{
    // Delegate to respond back
    id <SampleProtocolDelegate> _delegate;
}
@property (nonatomic, strong) id delegate;

-(void)startSampleProcess; // Instance method
@end
