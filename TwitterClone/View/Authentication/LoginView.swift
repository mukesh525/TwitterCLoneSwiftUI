//
//  LoginView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 29/05/21.
//

import SwiftUI

struct LoginView: View {
    @State var email=""
    @State var password=""
    @EnvironmentObject var viewModal: AuthViewModal
    
    
    var body: some View {
        NavigationView{
        ZStack {
            VStack {
            Image("twitter-logo")
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 100)
                .padding(.top,88)
                .padding(.bottom,32)
                VStack(spacing:20){
                    CustomTextField(text: $email, placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1,alpha:0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    CustomeSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1,alpha:0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                         
                }   .padding(.horizontal,32)
                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Forgot Passwrod ?")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top,8)
                            .padding(.trailing,32)
                        
                    })
                }
                Button(action: {
                    viewModal.Login(email: email, password: password)
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                      
                      
                    
                })
            Spacer()
                NavigationLink(
                    destination: RegisterView().navigationBarBackButtonHidden(true),
                    label:{
                            HStack {
                                Text("Don't have an account ?")
                                    .font(.system(size: 14))
                                Text("Sign Up")
                                    .font(.system(size: 14,weight: .semibold))
                            }.foregroundColor(.white)
                            .padding(.bottom,30)
                    })
                
            }
        }.background(Color(#colorLiteral(red: 0.1171132252, green: 0.6298289299, blue: 0.951243937, alpha: 1)))
        .ignoresSafeArea()
    }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
