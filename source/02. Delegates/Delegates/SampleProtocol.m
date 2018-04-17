//
//  SampleProtocol.m
//  Delegates
//
//  Created by UBM on 17/4/18.
//  Copyright © 2018 MIMS. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess{
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate selector:@selector(processCompleted) userInfo:nil repeats:NO];
}
@end
