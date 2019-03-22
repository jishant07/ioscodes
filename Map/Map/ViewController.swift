//
//  ViewController.swift
//  Map
//
//  Created by admin on 22/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController
{
    var location = CLLocationManager()
    @IBOutlet weak var mapView: MKMapView!
    @IBAction func userlocationButton(_ sender: UIButton)
    {
        let userLocation = mapView.userLocation
        let caughtRegion = MKCoordinateRegion.init(center: userLocation.location!.coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        mapView.setRegion(caughtRegion, animated: true)
    }
    var count = 1
    @IBAction func maptypeButton(_ sender: UIButton)
    {
        if(count%3 == 1)
        {
            mapView.mapType = MKMapType.hybrid
            count = count + 1
        }
        else if (count%3 == 2)
        {
            mapView.mapType = MKMapType.satellite
            count = count + 1
        }
        else if (count%3 == 0)
        {
            mapView.mapType = MKMapType.standard
            count = count + 1
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        location.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        var mapAnnotation = Destination(title:"Eiffel Tower",subtitle:"A beautiful french monument",coordinate:CLLocationCoordinate2D(latitude: 48.8584,longitude: 2.2945))
        
        mapView.addAnnotation(mapAnnotation)
    }
}

class Destination : NSObject,MKAnnotation
{
    //48.8584° N, 2.2945° E
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(title:String!,subtitle:String!,coordinate:CLLocationCoordinate2D)
    {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}

