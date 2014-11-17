//
//  MakingLocationWithPinsViewController.m
//  Mapas
//
//  Created by guitarrkurt on 27/10/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import "MakingLocationWithPinsViewController.h"

@implementation MakingLocationWithPinsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mapView.delegate = self;
    
    MKPointAnnotation *annotation1 = [[MKPointAnnotation alloc] init];
    annotation1.title = @"Miami";
    annotation1.subtitle = @"Annotation 1";
    annotation1.coordinate = CLLocationCoordinate2DMake(25.802, -80.132);
    
    MKPointAnnotation *annotation2 = [[MKPointAnnotation alloc] init];
    annotation2.title = @"Denver";
    annotation2.subtitle = @"Annotation 2";
    annotation2.coordinate = CLLocationCoordinate2DMake(39.733, -105.018);
    
    [self.mapView addAnnotation:annotation1];
    [self.mapView addAnnotation:annotation2];
}
//Cambiar el Color a Morado
/*- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKPointAnnotation class]])
    {
        // Create and return our own annotation view here
        static NSString *userPinAnnotationId = @"userPinAnnotation";
        
        // Create an annotation view, but reuse a cached one if available
        MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:userPinAnnotationId];
        
        if(annotationView)
        {
            // Cached view found. It’ll have the pin color set but not annotation.
            annotationView.annotation = annotation;
        }else{
            // No cached view were available, create a new one
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                                             reuseIdentifier:userPinAnnotationId];
                
            // Purple indicates user defined pin
            annotationView.pinColor = MKPinAnnotationColorPurple;
            }
        
        return annotationView;
    }
        return nil;
}*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
