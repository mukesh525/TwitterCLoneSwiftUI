//
//  RegisterView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 29/05/21.
//

import SwiftUI

struct RegisterView: View {
    @State var email=""
    @State var password=""
    @State var name=""
    @State var username=""
    @State var showImagePicker=false
    @State var slelctedUIImage:UIImage?
    @State var image:Image?
    @Environment(\.presentationMode) var mode:Binding<PresentationMode>
    
    @EnvironmentObject var viewModal: AuthViewModal
    
    func loadImage() {
        guard let selectedImage = slelctedUIImage else {return}
        image = Image(uiImage: selectedImage)
    }
    
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {showImagePicker.toggle()}, label: {
                    ZStack {
                        if let image = image {
                             image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                                .clipped()
                                .cornerRadius(70)
                            .padding(.top,88)
                            .padding(.bottom,16)
                        }
                        else {
                        Image("plus_photo")
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .padding(.top,88)
                            .padding(.bottom,16)
                            .foregroundColor(.white)
                        }
                    }
                }).sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
                    ImagePicker(image: $slelctedUIImage)
                })
          
                VStack(spacing:20){
                    CustomTextField(text: $name, placeholder: Text("Name"))
                        .padding()
                        .background(Color(.init(white: 1,alpha:0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    CustomTextField(text: $email, placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1,alpha:0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)

                    CustomTextField(text: $username, placeholder: Text("Username"))
                        .padding()
                        .background(Color(.init(white: 1,alpha:0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)

                    CustomeSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1,alpha:0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                         
                }.padding(.horizontal,32)
             
                Button(action: {
                    guard let image = slelctedUIImage else {return}
                    viewModal.Register(email: email, password: password, username: username,fullname: name, profileImage: image)
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                      
                      
                    
                })
            Spacer()
                
                
                Button(action:  { mode.wrappedValue.dismiss()}, label: {
                    HStack {
                        Text("Already have an account ?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14,weight: .semibold))
                    }.foregroundColor(.white)
                    .padding(.bottom,30)
                })
            }
               
            
        }.background(Color(#colorLiteral(red: 0.1171132252, green: 0.6298289299, blue: 0.951243937, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
