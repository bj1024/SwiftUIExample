//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      List(landmarkData){ landmark in

        LandmarkRow(landmark: landmark)
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
