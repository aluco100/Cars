//
//  LoginView.swift
//  Cars
//
//  Created by Alfredo Luco on 18-07-20.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String
    @State var password: String
    
    var body: some View {
        VStack {
            Image("login-bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12.0)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .shadow(radius: 40)
                .frame(height: 450)
            VStack{
                FormTextField(value: $userName, message: "Username Required", placeholder: "Usuario", validation: [.email,.required], firstToggle: true).padding(.top, 60)
                FormTextField(value: $password, message: "Password Required", placeholder: "Contraseña", validation: [.required],secureInput: true, firstToggle: true)
                Button("Ingresar", action: {
                    print("text")
                })
                .font(.custom("OpenSans-Regular", size: 20.0))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50.0)
                .background(Color("main_red"))
                .cornerRadius(8.0)
                .padding([.leading, .trailing], 8)
                .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .disabled(userName.isEmpty || !userName.isValidEmail() || password.isEmpty)
                Spacer()
                Button("Registrarse", action: {
                    print("todo")
                })
                .font(.custom("OpenSans-Regular", size: 16.0))
                .foregroundColor(Color("main_red"))
                .frame(maxWidth: .infinity)
                .frame(height: 50.0)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Ingresar como invitado", action: {
                    print("todo")
                })
                .font(.custom("OpenSans-Regular", size: 20.0))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 70.0)
                .background(Color("main_red"))
                
            }
            .frame(maxWidth: .infinity)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userName: "", password: "")
    }
}
