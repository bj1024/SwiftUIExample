//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  var coordinate: CLLocationCoordinate2D


  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
  }
  func updateUIView(_ uiView: MKMapView, context: Context) {
    let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    uiView.setRegion(region,animated:true)
  }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
