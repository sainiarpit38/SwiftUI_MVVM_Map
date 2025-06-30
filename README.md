# 🗺️ SwiftUI Google Maps Current Location App

This is a SwiftUI application that shows the **current user location** using the **Google Maps SDK**, following the **MVVM (Model-View-ViewModel)** architecture.

---

## 📸 Demo

| Home Screen | Location on Google Map |
|-------------|------------------------|

---

## ✅ Features

- 📍 Fetches and displays **current GPS location**
- 🗺️ Integrates **Google Maps SDK for iOS**
- 💡 Built with **SwiftUI** and **MVVM**
- 🔄 Includes a **Refresh Location** button
- 📌 Places a **custom marker** at the user's location

---

## 🧱 Architecture

- `LocationManager`: ViewModel that manages CoreLocation
- `GoogleMapView`: A SwiftUI-compatible Google Maps wrapper using `UIViewRepresentable`
- `CurrentLocationView`: SwiftUI View that binds location updates to the map

---

## 🚀 Getting Started

### Prerequisites

- Xcode 15+
- iOS 14+
- CocoaPods or Swift Package Manager
- A valid [Google Maps API Key](https://developers.google.com/maps/documentation/ios-sdk/start)

### 📦 Dependencies

#### CocoaPods

```ruby
pod 'GoogleMaps'
Then run:


pod install
🧪 Setup
Add your API key in AppDelegate.swift:

GMSServices.provideAPIKey("YOUR_GOOGLE_MAPS_API_KEY")
In Info.plist, add:

<key>NSLocationWhenInUseUsageDescription</key>
<string>We use your location to show it on Google Maps</string>
Run the app on a real device (not the simulator) for accurate GPS data.

🧭 Folder Structure

├── GoogleMapView.swift          # Map wrapper using GoogleMaps SDK
├── LocationManager.swift        # ViewModel using CoreLocation
├── CurrentLocationView.swift    # Main SwiftUI view
├── AppDelegate.swift            # API key setup
├── MyApp.swift                  # App entry point
├── Assets.xcassets              # (Optional) Custom markers
├── Info.plist                   # Location permissions
📌 Screenshot

🤝 Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


🙏 Credits
Google Maps SDK for iOS

Apple CoreLocation
