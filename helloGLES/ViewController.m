//
//  ViewController.m
//  helloGLES
//
//  Created by Zhambyl on 20/01/2019.
//  Copyright © 2019 dmi. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

static float re = 0.;
static float gr = 0.2;
static float bl = 0.3;
static float dr = .01;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GLKView *view = (GLKView*)self.view;
    view.context = [[EAGLContext alloc] initWithAPI: kEAGLRenderingAPIOpenGLES3];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    glClearColor(re, gr, bl, 1.);
    if (re > .48)
        dr = -(fabsf(dr));
    if (re < .02)
        dr = fabsf(dr);
    re += dr;
    glClear(GL_COLOR_BUFFER_BIT);
}

@end
