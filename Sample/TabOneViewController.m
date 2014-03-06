//
//  TabOneViewController.m
//  RNExternStoryboard
//
//  Created by Rafael Nobre on 3/3/14.
//
//  Original work Copyright (c) 2013 Paul Malikov. All rights reserved.
//  Modified work Copyright (c) 2014 Rafael Nobre. All rights reserved.
//
// https://github.com/nobre84/ExternStoryboard
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "TabOneViewController.h"

@interface TabOneViewController ()

@end

@implementation TabOneViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setRightBar:(id)sender {
    NSMutableArray *newItems = [self.navigationItem.rightBarButtonItems mutableCopy];
    if (!newItems) {
        newItems = [NSMutableArray new];
    }
    [newItems addObjectsFromArray:@[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:random()%20 target:self action:nil]]];
    self.navigationItem.rightBarButtonItems = newItems;
}

-(IBAction)unwindToTabOne:(UIStoryboardSegue*)segue {
    NSLog(@"source: %@, dest: %@", segue.sourceViewController, segue.destinationViewController);
}


@end
