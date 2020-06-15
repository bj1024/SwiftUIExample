//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
      Image("turtlerock")
      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
      .overlay(Circle().stroke(Color.white,lineWidth: 3.0))
        .shadow(color: Color.gray, radius: 10, x: 10, y: 10)


    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
