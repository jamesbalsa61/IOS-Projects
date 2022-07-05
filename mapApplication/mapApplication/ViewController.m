//
//  ViewController.m
//  mapApplication
//
//  Created by Michael Balsa on 7/4/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    //Define Zoom level and region in map.
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    //setups the longitude and latitude on map
    
    location.latitude = 30.230077761668337;
    location.longitude = -81.56124294753255;
    //longitude and latitude for specific coordinates
    
    region.span = span;
    region.center = location;
    //Initilizes zoom level and region in the MapView
    
    [self.mapView setRegion:region animated: YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    //assign pin to geological location
    [self.mapView addAnnotation:ann];
    
    
    locationManager.delegate = self;
    self.mapView.delegate = self;
    //allows the location manager delegate to read functions assigned to it.
    
    locationManager = [[CLLocationManager alloc] init];
    //initates location manager
}


- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=30.230077761668337,-81.56124294753255"] options:@{} completionHandler:nil];
    //Allows applicaiton to coordinate directions
    
}

- (IBAction)locate:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    [locationManager startUpdatingLocation];
    self.mapView.showsUserLocation = YES;
    //Requests permission to display the user location
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    //Define Zoom level and region in map.
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    //setups the longitude and latitude on map
    
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.latitude;
    //longitude and latitude for user location
    
    region.span = span;
    region.center = location;
    //Initilizes zoom level and region in the MapView
}

- (IBAction)hybrid:(id)sender {
    self.mapView.mapType = MKMapTypeHybrid;
}

- (IBAction)satelite:(id)sender {
    
    self.mapView.mapType = MKMapTypeSatellite;
}

- (IBAction)standard:(id)sender {
    
    self.mapView.mapType = MKMapTypeStandard;
}
@end
