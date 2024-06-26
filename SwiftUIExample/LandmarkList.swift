//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct LandmarkList: View {
//  @State var showFavoritesOnly = true

  @EnvironmentObject var userData: UserData

  var body: some View {
    NavigationView{

      List{
        Toggle(isOn: $userData.showFavoritesOnly) {
            Text("Favorites only")
        }
        ForEach(userData.landmarks){ landmark in
          if !self.userData.showFavoritesOnly || landmark.isFavorite {
              NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                  LandmarkRow(landmark: landmark)
              }
          }
        }
      }
//      List(landmarkData){ landmark in
//
//
//
//      }
      .navigationBarTitle(
        Text(/*@START_MENU_TOKEN@*/"Landmarks"/*@END_MENU_TOKEN@*/)
      )
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
//    ForEach(["iPhone SE", "iPhone XS Max","iPad Pro (9.7-inch)"], id: \.self) { deviceName in
//      LandmarkList()
//        .previewDevice(PreviewDevice(rawValue: deviceName))
//
//        .previewDisplayName(deviceName)
//    }

    LandmarkList()
    .environmentObject(UserData())
  }
}
