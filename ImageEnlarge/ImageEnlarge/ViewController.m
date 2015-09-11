//
//  ViewController.m
//  ImageEnlarge
//
//  Created by wang jam on 9/9/15.
//  Copyright (c) 2015 jam wang. All rights reserved.
//

#import "ViewController.h"
#import "ImageEnlarge.h"
#import "SDWebImage/UIImageView+WebCache.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ImageEnlarge* imageEnlarge = [[ImageEnlarge alloc] initWithParentView:self.view];
    
    //[imageEnlarge sd_setImageWithURL:[[NSURL alloc] initWithString:@"http://112.74.102.178:8080/image?name=b9f968cd7e9c4d67a19f6dbac26c13708e2fd737_compress"]];
    
    [imageEnlarge setThumbnailUrl:@"http://112.74.102.178:8080/image?name=b9f968cd7e9c4d67a19f6dbac26c13708e2fd737_compress"];
    [imageEnlarge setImageUrl:@"http://112.74.102.178:8080/image?name=b9f968cd7e9c4d67a19f6dbac26c13708e2fd737"];
    
    imageEnlarge.contentMode = UIViewContentModeScaleAspectFill;
    imageEnlarge.frame = CGRectMake(0, 0, 88, 88);
    imageEnlarge.center = self.view.center;
    [self.view addSubview:imageEnlarge];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
