//
//  FormButton.swift
//  Cars
//
//  Created by Alfredo Luco on 12-07-20.
//

import SwiftUI

struct FormButton: View {
    
    @State var title: String
    
    var trigger: () -> Void
    
    var body: some View {
        Button(title, action: {
            print("TODO")
            trigger()
        })
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .border(Color.gray, width: 2)
        .cornerRadius(4.0)
        .foregroundColor(.white)
        .padding(.leading, 16.0)
        .padding(.trailing, 16.0)
        .font(.custom("OpenSans-Regular", size: 20.0))
        
    }
}

struct FormButton_Previews: PreviewProvider {
    static var previews: some View {
        FormButton(title: "TEST", trigger: {})
    }
}
