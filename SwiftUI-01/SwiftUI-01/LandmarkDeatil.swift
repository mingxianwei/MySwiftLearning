//
//  LandmarkDeatil.swift
//  SwiftUI-01
//
//  Created by 明先伟 on 2022/10/11.
//

import SwiftUI

struct LandmarkDeatil: View {
    
    var landmark:Landmark
    
    @State var zoomed:Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 1.0)) {
                        self.zoomed.toggle()
                    }
                }
            
            if !zoomed {
                Text(landmark.name)
                    .font(.largeTitle)
                    .padding(.trailing, 15.0)
                    .foregroundColor(.secondary)
                    .transition(.move(edge: .trailing))  // 单独动画 这里会覆盖到前面的 withAnimation
            }
        }
    }
}

struct LandmarkDeatil_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                LandmarkDeatil(landmark: landmarkArray[0])
            }
            NavigationView {
                LandmarkDeatil(landmark: landmarkArray[1])
            }
            NavigationView {
                LandmarkDeatil(landmark: landmarkArray[2])
            }
        }
    }
}
