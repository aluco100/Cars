//
//  WalktroughAsset.swift
//  Cars
//
//  Created by Alfredo Luco on 11-07-20.
//

import SwiftUI

struct WalktroughAsset: View {
    
    @StateObject var asset: WalktroughModel
    
    var body: some View {
        Image(asset.imageName)
            .resizable()
            .overlay(Color.black.opacity(0.43))
            .overlay(
                VStack{
                    Spacer()
                    Text(asset.title)
                        .foregroundColor(.white)
                        .font(.custom("OpenSans-regular", size: 22.0))
                }
                .padding(.bottom, 64)
            )
    }
}

struct WalktroughAsset_Previews: PreviewProvider {
    static var previews: some View {
        WalktroughAsset(asset: WalktroughModel(imageName: "splash-2", title: "caca"))
    }
}
