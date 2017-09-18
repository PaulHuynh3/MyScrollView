//
//  ViewController.m
//  MyScrollView
//
//  Created by Paul on 2017-09-18.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (nonatomic) MyScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //we are making sure that gestures view and colou boxes are added on the same view so that they can be moved...
    
   //set the myScrolView as the root view.
    self.myScrollView = [[MyScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    // making the scrollview longer.
    self.myScrollView.contentSize = CGSizeMake(self.view.frame.size.width, 750.0);
    [self.view addSubview:self.myScrollView];
    [self makeShapes];
    
}


- (void)viewDidAppear:(BOOL)animated {
    //adjusting the bounds of Y and setting it as the new height
    CGRect adjustBounds = self.view.bounds;
    adjustBounds.origin.y += 100;
    //move the bounds of the main root view down everything will look like it went up.
    self.view.bounds = adjustBounds;
    
}


-(void)makeShapes {
    
    CGRect redBox = CGRectMake(20, 20, 150, 200);
    UIView *redBoxView = [[UIView alloc]initWithFrame:redBox];
    redBoxView.backgroundColor = [UIColor redColor];
    [self.myScrollView addSubview:redBoxView];
    

    CGRect greenBox = CGRectMake(150, 150, 150, 200);
    UIView *greenBoxView = [[UIView alloc]initWithFrame:greenBox];
    greenBoxView.backgroundColor =[UIColor greenColor];
    [self.myScrollView addSubview:greenBoxView];
    
    CGRect blueBox = CGRectMake(40, 400, 200, 150);
    UIView *blueBoxView = [[UIView alloc]initWithFrame:blueBox];
    blueBoxView.backgroundColor = [UIColor blueColor];
    [self.myScrollView addSubview:blueBoxView];
    
    //can just add cgrectmake into the frame to condense code.
    UIView *yellowBoxView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowBoxView.backgroundColor = [UIColor yellowColor];
    [self.myScrollView addSubview:yellowBoxView];

}



@end
