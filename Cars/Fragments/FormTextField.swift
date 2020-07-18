//
//  FormTextField.swift
//  Cars
//
//  Created by Alfredo Luco on 18-07-20.
//

import SwiftUI

struct FormTextField: View {
    
    @State var value: String
    var message: String
    var placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(message)
                .foregroundColor(Color("main_red"))
                .frame(maxWidth: .infinity)
                .frame(alignment: .leading)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .font(.custom("OpenSans-Regular", size: 12.0))
            TextField(placeholder, text: $value)
                .frame(height: 50)
                .border(Color("border-color"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(4.0)
        }.padding([.leading,.trailing], 10)
    }
}

struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(value: "", message: "Required", placeholder: "Username")
    }
}
