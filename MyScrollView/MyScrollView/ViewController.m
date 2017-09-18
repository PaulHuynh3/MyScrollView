//
//  ViewController.m
//  MyScrollView
//
//  Created by Paul on 2017-09-18.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeShapes];
    
}


- (void)viewDidAppear:(BOOL)animated {
    //adjusting the bounds of Y and setting it as the new height
    CGRect adjustBounds = self.view.bounds;
    adjustBounds.origin.y += 100;
    self.view.bounds = adjustBounds;
    
}


-(void)makeShapes {
    
 CGRect redBox = CGRectMake(20, 20, 150, 200);
    UIView *redBoxView = [[UIView alloc]initWithFrame:redBox];
    redBoxView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redBoxView];
    

    CGRect greenBox = CGRectMake(150, 150, 150, 200);
    UIView *greenBoxView = [[UIView alloc]initWithFrame:greenBox];
    greenBoxView.backgroundColor =[UIColor greenColor];
    [self.view addSubview:greenBoxView];
    
    CGRect blueBox = CGRectMake(40, 400, 200, 150);
    UIView *blueBoxView = [[UIView alloc]initWithFrame:blueBox];
    blueBoxView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueBoxView];
    
    //can just add cgrectmake into the frame to condense code.
    UIView *yellowBoxView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowBoxView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowBoxView];

    
}



@end
