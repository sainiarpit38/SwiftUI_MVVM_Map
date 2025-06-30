//
//  CurrentLocationView.swift
//  SwiftUI_MVVM_Map
//
//  Created by Entab on 30/06/25.
//

import SwiftUI
import SwiftUI
import CoreLocation

struct CurrentLocationView: View {
    @StateObject private var locationManager = LocationManager()

    var body: some View {
        VStack(spacing: 0) {
            if let coordinate = locationManager.currentLocation {
                GoogleMapView(coordinate: coordinate)
                    .edgesIgnoringSafeArea(.all)
            } else {
                ProgressView("Fetching location...")
                    .padding()
            }

            Button(action: {
                locationManager.refreshLocation()
            }) {
                Label("Refresh Location", systemImage: "arrow.clockwise")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
        }
    }
}
