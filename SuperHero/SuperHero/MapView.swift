//
//  MapView.swift
//  SuperHero
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI
import MapKit

//struct MapView: View {
//    
//    @State var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(center: superHeros[0].coordinateLocation, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)))
//    
//    var body: some View {
//        Map(position: $cameraPosition)
//    }
//}

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

#Preview {
    MapView(coordinate: superHeros[0].coordinateLocation)
}
