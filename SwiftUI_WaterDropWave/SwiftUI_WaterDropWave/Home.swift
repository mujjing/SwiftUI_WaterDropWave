//
//  Home.swift
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Image("j")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(10)
                .background(.white, in: Circle())
            
            Text("죠르디")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(.bottom, 30)
            
            GeometryReader { geo in
                let size = geo.size
                
                ZStack {
                    //MARK: Water Drop
                    Image(systemName: "drop.fill")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                }
                .frame(width: size.width, height: size.height, alignment: .center)
            }
            .frame(height: 350)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("BG"))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
