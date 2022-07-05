//
//  MapPin.h
//  mapApplication
//
//  Created by Michael Balsa on 7/4/22.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "MapPin.h"



@interface MapPin : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;
    
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@end
