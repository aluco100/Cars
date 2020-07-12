//
//  ContentView.swift
//  Cars
//
//  Created by Alfredo Luco on 11-07-20.
//

import SwiftUI

struct ContentView: View {
    
    var thumbs: [WalktroughModel] = [WalktroughModel(imageName: "splash-1", title: "Concepto 1"), WalktroughModel(imageName: "splash-2", title: "Concepto 2"), WalktroughModel(imageName: "splash-3", title: "Concepto 3")]
    
    var body: some View {
        ZStack {
            Color.black
                .overlay(TabView{
                    ForEach(thumbs) {
                        image in
                        WalktroughAsset(asset: image)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .padding([.bottom, .top], 32)
                )
                .overlay(VStack{
                    Text("Cars")
                        .foregroundColor(.white)
                        .font(.custom("GreatVibes-Regular", size: 64.0))
                    Spacer()
                }.padding(.top, 64))
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
