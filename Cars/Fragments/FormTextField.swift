//
//  FormTextField.swift
//  Cars
//
//  Created by Alfredo Luco on 18-07-20.
//

import SwiftUI

struct FormTextField: View {
    
    @Binding var value: String
    @State var message: String
    var placeholder: String
    var validation: [FieldValidation]
    var valid: Bool {
        get {
            for i in validation {
                switch i {
                case .email:
                    if !self.value.isValidEmail() {
                        return false
                    }
                    break
                case .required:
                    if self.value.isEmpty {
                        return false
                    }
                    break
                }
            }
            return true
        }
    }
    @State var firstToggle: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            if !firstToggle && !valid {
                Text(message)
                    .foregroundColor(Color("main_red"))
                    .frame(maxWidth: .infinity)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.custom("OpenSans-Regular", size: 12.0))
            }
            TextField(placeholder, text: $value, onEditingChanged: {_ in
                print("cambie")
                self.firstToggle = false
            })
                .frame(height: 50)
                .border(Color("border-color"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(4.0)
        }
        .padding([.leading,.trailing], 10)
        .onAppear {
            for i in validation {
                switch i {
                case .required:
                    break
                case .email:
                    if !self.value.isValidEmail() {
                        self.message = "Email inválido"
                    }
                    break
                }
            }
        }
    }
}

struct FormTextField_Previews: PreviewProvider {
    @State static var value: String = ""
    static var previews: some View {
        FormTextField(value: Self.$value, message: "Required", placeholder: "Username", validation: [.required], firstToggle: true)
    }
}
