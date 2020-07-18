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
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        GeometryReader{
            geometry in
            VStack {
                Image("login-bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(12.0)
                    .frame(maxWidth: .infinity)
                    .frame(height: 350.0)
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 40)
                VStack{
                    FormTextField(value: $userName, message: "Username Required", placeholder: "Usuario", validation: [.email,.required], firstToggle: true).padding(.bottom, 30)
                    FormTextField(value: $password, message: "Password Required", placeholder: "Contraseña", validation: [.required],secureInput: true, firstToggle: true).padding(.bottom, 30)
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
                .padding(.top, 40.0)
                .frame(maxWidth: .infinity)
            }
            .frame(width: geometry.size.width)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .navigationBarItems(leading: Button(action: {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "multiply.circle.fill")
                    .foregroundColor(.white)
            })
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userName: "", password: "")
    }
}
