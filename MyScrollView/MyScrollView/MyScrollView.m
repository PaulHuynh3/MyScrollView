//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Paul on 2017-09-18.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@end

@implementation MyScrollView
// we instantiate the gestures so that it can be used with the view controller.
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self){
    
    _panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(movementPan:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:self.panGesture];
        _yCoordinate = 0;
    }
    return self;
}



-(void)movementPan:(UIPanGestureRecognizer*)sender{
    self.yCoordinate = [sender translationInView:self].y;
    
    //we want the screen to go down thus we are only modifying the coordinates of Y.
    //its not self.view (as we are not in the view controller)
    self.bounds = CGRectMake(0, self.yCoordinate, self.frame.size.width, self.frame.size.height);

}


@end
