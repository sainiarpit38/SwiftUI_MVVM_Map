//
//  UserLocation.swift
//  SwiftUI_MVVM_Map
//
//  Created by Entab on 30/06/25.
//

import Foundation
import MapKit

struct UserLocation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
