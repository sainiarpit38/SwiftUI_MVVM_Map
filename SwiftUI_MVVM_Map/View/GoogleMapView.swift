//
//  GoogleMapView.swift
//  SwiftUI_MVVM_Map
//
//  Created by Entab on 30/06/25.
//

import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: coordinate.latitude, longitude: coordinate.longitude, zoom: 15)
        let mapView = GMSMapView(frame: .zero, camera: camera)

        let marker = GMSMarker(position: coordinate)
        marker.map = mapView

        return mapView
    }

    func updateUIView(_ mapView: GMSMapView, context: Context) {
        mapView.clear()

        let camera = GMSCameraPosition.camera(withLatitude: coordinate.latitude, longitude: coordinate.longitude, zoom: 15)
        mapView.animate(to: camera)

        let marker = GMSMarker(position: coordinate)
        marker.map = mapView
    }
}
