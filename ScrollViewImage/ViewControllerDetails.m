//
//  ViewControllerDetails.m
//  ScrollViewImage
//
//  Created by Rosalyn Kingsmill on 2016-05-16.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "ViewControllerDetails.h"


@interface ViewControllerDetails () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewDetails;
@property (weak, nonatomic) IBOutlet UIScrollView *imageViewDetails;

@end

@implementation ViewControllerDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollViewDetails.delegate = self;
    self.scrollViewDetails.minimumZoomScale = 0.5;
    self.scrollViewDetails.maximumZoomScale = 2;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    if (scrollView) {
        
    
        
        
    }
    
    return nil;
}

//- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
//    // this delegate method expect you to return a view that the scroll view will use to zoom
//    if (self.demoNumber == 1) {
//        UIImageView *cookieMonster = [scrollView viewWithTag:100];
//        return cookieMonster;
//    } else if (self.demoNumber == 2) {
//        UIView *colorView = [scrollView viewWithTag:100];
//        return colorView;
//    }
//    
//    return nil;
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
