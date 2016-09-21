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
        let brain = BikeBrain()
        
        //create region, set region as default
        let region = MKCoordinateRegion(center: brain.center, span: brain.span)
        Map.setRegion(region, animated: true)
        
        //iterate through location arrays and place annotations on map
        for i in 0 ..< brain.locationTitles.count {
            let annotation = MKPointAnnotation()
            mapView(Map, viewForAnnotation: annotation)
            annotation.coordinate = brain.locationCoordinates[i]
            annotation.title = brain.locationTitles[i]
            annotation.subtitle = brain.locationSubtitles[i]
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

