//
//  OverlaysInTheMapViewController.h
//  Mapas


#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface OverlaysInTheMapViewController : UIViewController <MKMapViewDelegate>


@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end
