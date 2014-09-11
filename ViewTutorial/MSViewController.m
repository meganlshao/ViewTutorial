//
//  MSViewController.m
//  ViewTutorial
//
//  Created by Megan Shao on 9/11/14.
//  Copyright (c) 2014 Megan Shao. All rights reserved.
//

#import "MSGrid.h"
#import "MSViewController.h"

@interface MSViewController () {
    UIButton* _button;
    UIView* _gridView;
}

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    // create grid view
    _gridView = [[MSGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    // create button
    CGFloat buttonSize = size / 5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    [_button setTitle:@"Hit me" forState:UIControlStateNormal];
    [_button setTitleColor: [UIColor blueColor] forState:UIControlStateNormal];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    // create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    _button.showsTouchWhenHighlighted = TRUE;
    NSLog(@"You pressed the button!");
}

@end
