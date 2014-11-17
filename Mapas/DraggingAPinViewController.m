//
//  DraggingAPinViewController.m
//  Mapas
//
//  Created by guitarrkurt on 27/10/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import "DraggingAPinViewController.h"

@implementation DraggingAPinViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.mapView.delegate = self;
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = CLLocationCoordinate2DMake(39.739, -104.984);
    [self.mapView addAnnotation:annotation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    // Don't create annotation views for the user location annotation
    if ([annotation isKindOfClass:[MKPointAnnotation class]])
    {
        static NSString *draggableAnnotationId = @"draggableAnnotation";
        
        // Create an annotation view, but reuse a cached one if available
        MKPinAnnotationView *annotationView =
        (MKPinAnnotationView *)[self.mapView
                                dequeueReusableAnnotationViewWithIdentifier:draggableAnnotationId];
        if(annotationView)
        {
            // Cached view found, associate it with the annotation
            annotationView.annotation = annotation;
        }
        else
        {
            // No cached view were available, create a new one
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                                             reuseIdentifier:draggableAnnotationId];
            annotationView.pinColor = MKPinAnnotationColorPurple;
            annotationView.draggable = YES;
        }
        
        return annotationView;
    }
    
    // Use a default annotation view for the user location annotation
    return nil;
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState
{
    if (newState == MKAnnotationViewDragStateEnding)
    {
        MKPointAnnotation *annotation = view.annotation;
        NSLog(@"\nPin Location: %f, %f (Lat, Long)",
              annotation.coordinate.latitude, view.annotation.coordinate.longitude);
    }
    
}
@end
