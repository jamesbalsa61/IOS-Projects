//
//  ViewController.h
//  mapApplication
//
//  Created by Michael Balsa on 7/4/22.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapPin.h"

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    //Obatins the user informmtion for current location
}


@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)standard:(id)sender;

- (IBAction)satelite:(id)sender;

- (IBAction)hybrid:(id)sender;

- (IBAction)locate:(id)sender;

- (IBAction)directions:(id)sender;


@end

