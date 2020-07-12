//
//  ContentView.swift
//  Cars
//
//  Created by Alfredo Luco on 11-07-20.
//

import SwiftUI

struct ContentView: View {
    
    var thumbs: [WalktroughModel] = [WalktroughModel(imageName: "splash-1", title: "Concepto 1"), WalktroughModel(imageName: "splash-2", title: "Concepto 2"), WalktroughModel(imageName: "splash-3", title: "Concepto 3")]
    @State var tag:Int? = nil
        
    var body: some View {
        NavigationView {
            ZStack {
                
                NavigationLink(destination:Text("caca"), tag: 1, selection: $tag) {
                    EmptyView()
                  }
                
                Color.black
                    .overlay(TabView{
                        ForEach(thumbs) {
                            image in
                            WalktroughAsset(asset: image)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    )
                    .overlay(VStack{
                        Text("Cars")
                            .foregroundColor(.white)
                            .font(.custom("GreatVibes-Regular", size: 64.0))
                        Spacer()
                        FormButton(title: "Ingresar", trigger: {
                            print("main trigger")
                            self.tag = 1
                        })
                            .padding(.bottom, 80)
                    }.padding(.top, 64))
                
            }.edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
