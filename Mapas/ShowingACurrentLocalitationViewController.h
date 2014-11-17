//
//  ShowingACurrentLocalitationViewController.h
//  Mapas
//
//  Created by guitarrkurt on 27/10/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>






@interface ShowingACurrentLocalitationViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapVIew;
@property (weak, nonatomic) IBOutlet UILabel *userLocationLabel;
@property (weak, nonatomic) IBOutlet UIToolbar *mapToolbar;


@end
