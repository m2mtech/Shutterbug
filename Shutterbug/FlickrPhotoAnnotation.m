//
//  FlickrPhotoAnnotation.m
//  Shutterbug
//
//  Created by Martin Mandl on 27.07.12.
//  Copyright (c) 2012 m2m. All rights reserved.
//

#import "FlickrPhotoAnnotation.h"
#import "FlickrFetcher.h"

@implementation FlickrPhotoAnnotation

@synthesize photo = _photo;

+ (FlickrPhotoAnnotation *)annotationForPhoto:(NSDictionary *)photo
{
    FlickrPhotoAnnotation *annotation = [[FlickrPhotoAnnotation alloc] init];
    annotation.photo = photo;
    return annotation;
}

- (NSString *)title
{
    return [self.photo objectForKey:FLICKR_PHOTO_TITLE];
}

- (NSString *)subtitle
{
    return [self.photo valueForKey:FLICKR_PHOTO_DESCRIPTION];
}

- (CLLocationCoordinate2D)coordinate
{
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = [[self.photo valueForKey:FLICKR_LATITUDE] doubleValue];
    coordinate.longitude = [[self.photo valueForKey:FLICKR_LONGITUDE] doubleValue];
    return coordinate;
}

@end
