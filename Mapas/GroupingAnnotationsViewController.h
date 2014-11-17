//
//  GroupingAnnotationsViewController.h
//  Mapas
//
//  Created by guitarrkurt on 27/10/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface GroupingAnnotationsViewController : UIViewController <MKMapViewDelegate>
{
    CLLocationDegrees _zoomLevel;
    NSMutableArray *_annotations;
    
}

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
