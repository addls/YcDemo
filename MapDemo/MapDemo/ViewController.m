//
//  ViewController.m
//  MapDemo
//
//  Created by rongfzh on 12-6-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CustomAnnotation.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)createAnnotationWithCoords:(CLLocationCoordinate2D) coords {
	CustomAnnotation *annotation = [[CustomAnnotation alloc] initWithCoordinate: 
									coords];
	annotation.title = @"标题";
	annotation.subtitle = @"子标题";
	[map addAnnotation:annotation];
}

- (void)viewDidLoad
{
    map = [[MKMapView alloc] initWithFrame:[self.view bounds]];
	map.showsUserLocation = YES;
	map.mapType = MKMapTypeStandard;
    [self.view addSubview:map];
	
	CLLocationCoordinate2D coords = CLLocationCoordinate2DMake(39.915352,116.397105);
	
	float zoomLevel = 0.02;
	MKCoordinateRegion region = MKCoordinateRegionMake(coords, MKCoordinateSpanMake(zoomLevel, zoomLevel));
	[map setRegion:[map regionThatFits:region] animated:YES];
		
	map.delegate = self;
	
	[self createAnnotationWithCoords:coords];
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    [locationManager stopUpdatingLocation];
    
    NSString *strLat = [NSString stringWithFormat:@"%.4f",newLocation.coordinate.latitude];
    NSString *strLng = [NSString stringWithFormat:@"%.4f",newLocation.coordinate.longitude];
    NSLog(@"Lat: %@  Lng: %@", strLat, strLng);
    
    CLLocationCoordinate2D coords = CLLocationCoordinate2DMake(newLocation.coordinate.latitude,newLocation.coordinate.longitude);
	float zoomLevel = 0.02;
	MKCoordinateRegion region = MKCoordinateRegionMake(coords,MKCoordinateSpanMake(zoomLevel, zoomLevel));
	[map setRegion:[map regionThatFits:region] animated:YES];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"locError:%@", error);

}

@end
