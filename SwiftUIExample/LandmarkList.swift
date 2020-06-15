//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView{
      List(landmarkData){ landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationBarTitle(
        Text(/*@START_MENU_TOKEN@*/"Landmarks"/*@END_MENU_TOKEN@*/)
      )
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone SE", "iPhone XS Max","iPad Pro (9.7-inch)"], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))

        .previewDisplayName(deviceName)
    }

  }
}
