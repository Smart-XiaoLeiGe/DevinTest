//
//  ViewController.m
//  DevinTest
//
//  Created by Devin on 11/17/14.
//  Copyright (c) 2014 Devin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myteststr;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Starter Template for Bootstrap" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];
    
    int s = calcul2([NSArray arrayWithObjects:[NSNumber numberWithInt:1],
                     [NSNumber numberWithInt:2],
                     [NSNumber numberWithInt:3],
                     [NSNumber numberWithInt:4],
                     [NSNumber numberWithInt:5],nil]);
    NSLog(@"s: %d",s);
}

int calcul2(NSArray *arr)// 返回N个数中的最大值
{
    unsigned long int n = arr.count;
    if (!arr || [arr count] == 0)
    {
        return 0;
    }
    if (n==1)
    {
        return (int)[arr objectAtIndex:0];
    }
    else if (n==2)
        return MAX((int)arr[0], (int)arr[1]);
    else
    {
       
        NSArray * a = [arr objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, n/2)]];
        NSArray * b = [arr objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(n/2+1, n-1)]];
        
        return MAX(calcul2(a), calcul2(b));
        
    }
}

-(void)testCamera
{
//    if ([[AVCaptureDevice class] respondsToSelector:@selector(authorizationStatusForMediaType:)]) {
//        AVAuthorizationStatus authorizationStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
//        if (authorizationStatus == AVAuthorizationStatusRestricted
//            || authorizationStatus == AVAuthorizationStatusDenied) {
//            
//            // 没有权限
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
//                                                                message:@"Please enabled Camera Access (in Settings > Privacy > Camera)!"
//                                                               delegate:nil
//                                                      cancelButtonTitle:@"OK"
//                                                      otherButtonTitles:nil];
//            [alertView show];
//            return;
//        }
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
