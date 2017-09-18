//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Paul on 2017-09-18.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGesture;
@property (nonatomic) CGFloat yCoordinate;


-(instancetype)initWithFrame:(CGRect)frame;

@end
