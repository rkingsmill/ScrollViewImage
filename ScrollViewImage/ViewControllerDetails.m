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

@property (weak, nonatomic) IBOutlet UIImageView *imageViewDetails;

@end

@implementation ViewControllerDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollViewDetails.delegate = self;
    self.scrollViewDetails.minimumZoomScale = 0.5;
    self.scrollViewDetails.maximumZoomScale = 4;
    
  

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {

    self.imageViewDetails.image = self.image;
   
    //return thing want to zoom
    return self.imageViewDetails;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
