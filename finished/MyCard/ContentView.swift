//
//  ContentView.swift
//  MyCard
//
//  Created by Serafima Nerush on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.90, green: 0.49, blue: 0.13, opacity: 0.8)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("MyCard")
                    .foregroundColor(.white)
                    .font(Font.custom("OpenSansCondensed-Light", size: 20))
                Spacer()
                Image("sima")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190, height: 190)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Sima Nerush")
                    .foregroundColor(.white)
                    .font(Font.custom("DancingScript-Bold", size: 50))
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.title3)
                Divider()
                ContactView(text: "123-456-78-90", image: "phone")
                ContactView(text: "serafiman@reed.edu", image: "envelope")
                Spacer()
            }
        }
        
    }
}

struct ContactView: View {
    var text: String
    var image: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack {
            Image(systemName: image)
                .foregroundColor(.orange)
            Text(text)
                .foregroundColor(.black)

        })
        .padding(.all)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
