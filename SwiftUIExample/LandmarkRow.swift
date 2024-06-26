//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark

    var body: some View {
      HStack{
        landmark.image
          .resizable()
          .frame(width: 64, height:64, alignment: .center)
        Text(landmark.name)
        Spacer()
        if landmark.isFavorite {
          Image(systemName: "star.fill")
          .imageScale(.medium)
           .foregroundColor(.yellow)
        }
       
      }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {

      Group {
        LandmarkRow(landmark: landmarkData[3])
//        LandmarkRow(landmark: landmarkData[2])
      }
      .previewLayout(.fixed(width: 300, height: 70))

    }
}
