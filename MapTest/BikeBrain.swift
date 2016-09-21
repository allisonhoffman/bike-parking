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
        "Safeway",
        "Starbucks",
        "Goodwill",
        "Grocery Outlet",
        "Pronto",
        "Tomato Alley"]
    
    //array of location subtitles
    let locationSubtitles = [
        "North side of I Street, west of 19th Street",
        "East side of 2nd Street, north of L Street",
        "North side of S Street, west of 19th Street",
        "Northeast corner of 16th and P Street",
        "North side of L Street, west of 17th Street",
        "Southeast corner of Capitol and 17th Street",
        "Southeast corner of 16th and O Street",
        "West side of 10th street, north of Tomato Alley"]
    
    //array of location coordinates
    let locationCoordinates = [
        CLLocationCoordinate2DMake(38.578312, -121.481122),
        CLLocationCoordinate2DMake(38.581106, -121.504862),
        CLLocationCoordinate2DMake(38.567428, -121.486079),
        CLLocationCoordinate2DMake(38.571436, -121.487882),
        CLLocationCoordinate2DMake(38.575944, -121.485196),
        CLLocationCoordinate2DMake(38.573974, -121.484996),
        CLLocationCoordinate2DMake(38.572433, -121.487652),
        CLLocationCoordinate2DMake(38.568885, -121.498679)]

    //set center of map, span to be displayed
    let center = CLLocationCoordinate2DMake(38.572193, -121.486001)
    let span = MKCoordinateSpanMake (0.08, 0.08)
    
    
}