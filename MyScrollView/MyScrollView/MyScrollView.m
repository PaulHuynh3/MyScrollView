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

-(instancetype)initWithFrame:(CGRect)frame{

    if (self =[super initWithFrame:frame]){
    
    _panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(movementPan:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:_panGesture];
        _yCoordinate = 0;
    }
    return self;
}



-(void)movementPan:(UIPanGestureRecognizer*)sender{
    self.yCoordinate = [sender translationInView:self].y;
    
    //self.bounds = CGRectMake(0, -self.translationY, self.frame.size.width, self.frame.size.height);
    


}


@end
