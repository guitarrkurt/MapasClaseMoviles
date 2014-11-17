//
//  MakingLocationWithPinsViewController.h
//  Mapas
//
//  Created by guitarrkurt on 27/10/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MakingLocationWithPinsViewController : UIViewController <MKMapViewDelegate>


@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
