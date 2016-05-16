//
//  ViewController.m
//  ScrollViewImage
//
//  Created by Rosalyn Kingsmill on 2016-05-16.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerDetails.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   self.scrollView.delegate = self;
    

    UITapGestureRecognizer *tapToZoom = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(zoom:)];
    tapToZoom.numberOfTapsRequired = 1;
    tapToZoom.numberOfTouchesRequired = 1;
    [self.scrollView addGestureRecognizer:tapToZoom];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)zoom:(UITapGestureRecognizer*)tap {
  
    CGPoint location = [tap locationInView:self.scrollView];
    
    if (location.x < self.imageView1.bounds.size.width) {
        
    [self performSegueWithIdentifier:@"zoomImage" sender:self.imageView1];
        
    }
    
    else if ((location.x > self.imageView1.bounds.size.width) && (location.x < (self.imageView1.bounds.size.width + self.imageView2.bounds.size.width))) {
        
       [self performSegueWithIdentifier:@"zoomImage" sender:self.imageView2];
    }
    
    else {
        
        [self performSegueWithIdentifier:@"zoomImage" sender:self.imageView3];
    }
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIImageView*)sender
{
        if ([segue.identifier isEqualToString:@"zoomImage"]) {
            
            ViewControllerDetails *viewControllerDetails = segue.destinationViewController;
            
            viewControllerDetails.image = sender.image;
            
        }}

@end
