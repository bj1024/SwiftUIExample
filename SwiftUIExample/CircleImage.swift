//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct CircleImage: View {
  var image: Image

  var body: some View {
    image
      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
      .overlay(Circle().stroke(Color.white,lineWidth: 3.0))

      .shadow(color: Color.gray, radius: 10, x: 10, y: 10)


  }
}

struct CircleImageView_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage(image: Image("hiddenlake"))
  }
}
