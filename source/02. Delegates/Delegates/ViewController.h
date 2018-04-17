//
//  ViewController.h
//  Delegates
//
//  Created by UBM on 17/4/18.
//  Copyright © 2018 MIMS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController<SampleProtocolDelegate>{
    IBOutlet UILabel *myLabel;
}
@end
