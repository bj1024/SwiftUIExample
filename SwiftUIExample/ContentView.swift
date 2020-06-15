//
// Copyright (c) 2020, mycompany All rights reserved. 
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .frame(height:300)
        .edgesIgnoringSafeArea(.top)
      CircleImageView()
        .offset(x: 0, y: -130)
        .padding(.bottom,-130)
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.headline)
          .foregroundColor(Color(hue: 1.0, saturation: 0.753, brightness: 0.852))
          .multilineTextAlignment(.leading)
        HStack {
          Text("Joshua Tree National Park.")
          Spacer()
          Text("California")
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
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
