//
//  ViewController.m
//  Game
//
//  Created by abc on 7/27/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *country,*images,*threecntry;
    int num;
    NSString *a,*b,*c;
    
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
     _btn1ot.clipsToBounds = YES;
     self.btn1ot.layer.cornerRadius = self.btn1ot.bounds.size.width/2.0f;
    
    _btn2ot.clipsToBounds = YES;
    self.btn2ot.layer.cornerRadius = self.btn1ot.bounds.size.width/2.0f;
    
    _btn3ot.clipsToBounds = YES;
    self.btn3ot.layer.cornerRadius = self.btn1ot.bounds.size.width/2.0f;
   
    [self nextflags];
    

 
    num=0;
    NSLog(@"score = %d",num);
    
   
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)bt1act:(id)sender {
    
    if ([self.countryot.text isEqualToString:[NSString stringWithFormat:@"%@",threecntry[0]]]) {
        
        
        num++;
        
        NSLog(@"current score = %d",num);
        
        [self.scoreot setText:[NSString stringWithFormat: @"%d", num]];

        
       [self answerrightalertcontrol];
        
        UIImage *img=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[0]]];
     
        self.imageotview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[0]]];
        
        
    }
    else
    {
        
        if ([self.scoreot.text isEqualToString:@"0"] ) {
            
            
              [self exit];
            
        }
        else
        {
        num--;
        
        NSLog(@"current score = %d",num);
        
        [self.scoreot setText:[NSString stringWithFormat: @"%d", num]];

            [self answerwrongalertcontrol];
        
 
         self.imageotview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[0]]];
    }
    }
    
}

- (IBAction)btn2act:(id)sender
{
    
    
    
    if ([self.countryot.text isEqualToString:[NSString stringWithFormat:@"%@",threecntry[1]]]) {
        
       

        NSLog(@"country[8] =",a);
        num++;
        
        NSLog(@"current score = %d",num);
        
        [self.scoreot setText:[NSString stringWithFormat: @"%d", num]];

        
        [self answerrightalertcontrol];
        
       self.imageotview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[1]]];
       
    }
    else
    {
        if ([self.scoreot.text isEqualToString:@"0"] ) {
            
            
             [self exit];
            
        }
        else
        {

        num--;
        
        NSLog(@"current score = %d",num);
        
        [self.scoreot setText:[NSString stringWithFormat: @"%d", num]];
        
         [self answerwrongalertcontrol];
            
        self.imageotview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[1]]];
            

    }
   
    }
    
    
}

- (IBAction)btn3act:(id)sender {
    
    if ([self.countryot.text isEqualToString:[NSString stringWithFormat:@"%@",threecntry[2]]]) {
        
        num++;
        
        NSLog(@"current score = %d",num);
        
        [self.scoreot setText:[NSString stringWithFormat: @"%d", num]];
        
        [self answerrightalertcontrol];
        
        self.imageotview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[2]]];
    }
    else
    {
        if ([self.scoreot.text isEqualToString:@"0"] ) {
            
            
            [self exit];
            
        }
        else
        {
            num--;
            
            NSLog(@"current score = %d",num);
            
            [self.scoreot setText:[NSString stringWithFormat: @"%d", num]];
            
              [self answerwrongalertcontrol];
            
            self.imageotview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[2]]];
            
        }

        }

        
}



-(void)nextflags
{
    
    self.imageotview.image = nil;
    
    country=[NSMutableArray arrayWithObjects:@"PAKISTAN",@"INDIA",@"NEPAL",@"CHINA",@"BHUTAN",@"AFGANISTAN",@"CANADA",@"AMERICA",@"ITALY",@"RUSSIA", nil];
    
    threecntry=[[NSMutableArray alloc]init];

    
    NSLog(@"%@",country);
    
//    
//            int randomInt1 = arc4random() % [country count];
//            int randomInt2 = arc4random() % [country count];
//    
//    
//    
//            [country exchangeObjectAtIndex:randomInt1 withObjectAtIndex:randomInt2];
    NSUInteger count = [country count];
    if (count <= 1) return;
    for (NSUInteger i = 0; i < count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [country exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
  
    
            NSLog(@"after shuffel all array =%@",country);

    
    a = [country objectAtIndex:5];
    b = [country objectAtIndex:8];
    c = [country objectAtIndex:2];

    
    [threecntry addObject:a];
    [threecntry addObject:b];
    [threecntry addObject:c];
    
    NSLog(@"%@",threecntry);
    

    
    [self shuffelingthree];
    
    
    
}



-(void)shuffelingthree
{
    [self.countryot setText:threecntry[2]];
    
    NSLog(@"label text =  %@",threecntry[1]);
        

    
    NSUInteger count = [threecntry count];
    if (count <= 1) return;
    for (NSUInteger i = 0; i < count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [threecntry exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    
        
        NSLog(@"after shuffel = %@",threecntry);
        
        ////// stattticcc
        
        [self.btn1ot setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[0]]] forState:UIControlStateNormal];
    
        
        NSLog(@"0 %@",threecntry[0]);
        
        [self.btn2ot setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[1]]] forState:UIControlStateNormal];
        NSLog(@"0 %@",threecntry[1]);

        
        [self.btn3ot setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",threecntry[2]]] forState:UIControlStateNormal];
        NSLog(@"0 %@",threecntry[2]);
  
    }

-(void)answerrightalertcontrol
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:[NSString stringWithFormat: @"score %d", num]
                                 message:@"fantastic job!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"you right"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    [self.scoreot setBackgroundColor:[UIColor greenColor]];
                                    [self nextflags];
                                }];
    [alert addAction:yesButton];
    [self presentViewController:alert animated:YES completion:nil];

    
}
-(void)answerwrongalertcontrol
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:[NSString stringWithFormat: @"score %d", num]
                                 message:@"you lose (.-.)"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"you are wrong"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action)
                               {
                                   
                                   [self nextflags];
                                   [self.scoreot setBackgroundColor:[UIColor redColor]];
                                   
                               }];
    [alert addAction:noButton];
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(void)exit
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:[NSString stringWithFormat: @"You Lost"]
                                 message:@"Time to go home (.-.)"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"exit"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   
                                   exit(0);
                                   
                               }];
    [alert addAction:noButton];
    [self presentViewController:alert animated:YES completion:nil];
    
}




@end
