//
//  ViewController.m
//  IAmRich
//
//  Created by du phung cong on 7/27/15.
//  Copyright (c) 2015 duphungcong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamRich;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.ruby.alpha = 1;
    self.iamRich.alpha = 1;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 animations:^{
            self.iamRich.center = CGPointMake(self.iamRich.center.x, 320);
            // CGPointMake(x, y) return a point with (x, y) coordinates
            // self.iamRich.center -> set center point of iamRich object
            self.iamRich.alpha = 1;
            
        } completion:nil];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
