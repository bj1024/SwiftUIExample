//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark
  var body: some View {
    VStack {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height:300)
        .edgesIgnoringSafeArea(.top)
      CircleImage(image:landmark.image)
        .offset(x: 0, y: -130)
        .padding(.bottom,-130)
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.headline)
          .foregroundColor(Color(hue: 1.0, saturation: 0.753, brightness: 0.852))
          .multilineTextAlignment(.leading)
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .padding()
        //          .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
      }
      .padding()
      //        .padding(.leading, 64.0)
      //        .padding(.trailing, 16.0)
      //        .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
      Spacer()
    }
    .navigationBarTitle(Text(landmark.name), displayMode: .inline)
  }

}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: landmarkData[0])
  }
}
