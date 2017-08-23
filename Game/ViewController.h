//
//  ViewController.h
//  Game
//
//  Created by abc on 7/27/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
- (IBAction)actioooon:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *countryot;
@property (strong, nonatomic) IBOutlet UIButton *btn1ot;

@property (strong, nonatomic) IBOutlet UIButton *btn2ot;
@property (strong, nonatomic) IBOutlet UIButton *btn3ot;
- (IBAction)bt1act:(id)sender;
- (IBAction)btn2act:(id)sender;
- (IBAction)btn3act:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *scoreot;
@property (strong, nonatomic) IBOutlet UIImageView *imageotview;

@end

