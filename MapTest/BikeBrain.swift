//
//  BikeBrain.swift
//  MapTest
//
//  Created by Allison Hoffman on 9/21/16.
//  Copyright © 2016 Allison Hoffman. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

class BikeBrain {
    
    //array of location titles
    let locationTitles = [
        "The Mill",
        "Subway",
        "Safeway" ]
    
    //array of location subtitles
    let locationSubtitles = [
        "Coffee shop with bike racks in front.",
        "Small bike rack in front of shop.",
        "Bike racks on S Street." ]
    
    //array of location coordinates
    let locationCoordinates = [
        CLLocationCoordinate2DMake(38.578312, -121.481122),
        CLLocationCoordinate2DMake(38.581106, -121.504862),
        CLLocationCoordinate2DMake(38.567428, -121.486079) ]

    
    //set center of map, span to be displayed
    let center = CLLocationCoordinate2DMake(38.572193, -121.486001)
    let span = MKCoordinateSpanMake (0.08, 0.08)
    
    
}