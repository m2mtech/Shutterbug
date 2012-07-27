//
//  FlickrPhotoAnnotation.h
//  Shutterbug
//
//  Created by Martin Mandl on 27.07.12.
//  Copyright (c) 2012 m2m. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface FlickrPhotoAnnotation : NSObject <MKAnnotation>

+ (FlickrPhotoAnnotation *)annotationForPhoto:(NSDictionary *)photo; // Flickr photo dictionary

@property (nonatomic, strong) NSDictionary *photo;

@end
