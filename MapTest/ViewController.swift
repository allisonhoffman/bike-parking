//
//  ViewController.swift
//  MapTest
//
//  Created by Allison Hoffman on 7/22/16.
//  Copyright © 2016 Allison Hoffman. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var Map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Map.delegate = self
        
        let locationTitles = [
            "The Mill",
            "Subway",
            "Safewai" ]
        
        let locationSubtitles = [
            "Coffee shop with bike racks in front.",
            "Small bike rack in front of shop.",
            "Bike racks on S Street." ]
        
        let locationCoordinates = [
            CLLocationCoordinate2DMake(38.578312, -121.481122),
            CLLocationCoordinate2DMake(38.581106, -121.504862),
            CLLocationCoordinate2DMake(38.567428, -121.486079) ]
  
        
        //set center of map, span to be displayed, create region, set region as default
        let center = CLLocationCoordinate2DMake(38.572193, -121.486001)
        let span = MKCoordinateSpanMake (0.08, 0.08)
        let region = MKCoordinateRegion(center: center, span: span)
        Map.setRegion(region, animated: true)
        
        
        for i in 0 ..< locationTitles.count {
            let annotation = MKPointAnnotation()
            mapView(Map, viewForAnnotation: annotation)
            annotation.coordinate = locationCoordinates[i]
            annotation.title = locationTitles[i]
            annotation.subtitle = locationSubtitles[i]
            Map.addAnnotation(annotation)
       

        }
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        if !(annotation is MKPointAnnotation) {
            return nil
        }
        
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier("demo")
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "demo")
            annotationView!.canShowCallout = true
        }
        else {
            annotationView!.annotation = annotation
        }
        
        annotationView!.image = UIImage(named: "bike")
        
        return annotationView
        
    }
    

}

