//
//  ViewController.m
//  Smilodon
//
//  Created by PiosaJiang on 13-7-4.
//  Copyright (c) 2013年 PiosaJiang. All rights reserved.
//

#import "ViewController.h"

#import "PJCanvasView.h"

@interface ViewController ()
@property(strong,nonatomic) PJCanvasView * canvasView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.canvasView = [[PJCanvasView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [self.view addSubview:_canvasView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
