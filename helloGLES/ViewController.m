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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GLKView *view = (GLKView*)self.view;
    view.context = [[EAGLContext alloc] initWithAPI: kEAGLRenderingAPIOpenGLES3];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    glClearColor(0., .1, .3, 1.);
    glClear(GL_COLOR_BUFFER_BIT);
}

@end
