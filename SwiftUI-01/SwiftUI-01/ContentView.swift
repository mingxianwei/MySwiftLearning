//
//  ContentView.swift
//  SwiftUI-01
//
//  Created by 明先伟 on 2022/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(landmarkArray) { landmark in
                landmarkCell(landmark: landmark)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct landmarkCell: View {
    var landmark:Landmark
    var body: some View {
        NavigationLink(destination: LandmarkDeatil(landmark: landmark)){
            HStack() {
                Image(landmark.imageName)
                    .resizable(resizingMode: .stretch)
                    .frame(width:60, height: 60)
                    .cornerRadius(5)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 2.0)
                    Text(landmark.Location)
                        .font(.body)
                        .fontWeight(.light)
                }
                .padding(.leading)
            }
        }
        .navigationBarTitle("世界地标")
    }
}
