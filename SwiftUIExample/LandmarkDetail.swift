//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var userData: UserData

  var landmark: Landmark


  var landmarkIndex: Int {
      userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }

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
        Button(action: {
            self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
        }) {
            if self.userData.landmarks[self.landmarkIndex].isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            } else {
                Image(systemName: "star")
                    .foregroundColor(Color.gray)
            }
        }
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
    .environmentObject(UserData())
  }
}
