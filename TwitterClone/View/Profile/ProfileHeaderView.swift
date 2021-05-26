//
//  ProfileHeaderView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 26/05/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack{
            Image("batman")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120).cornerRadius(120/2)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            Text("BruceWayne")
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .padding(.top,8)
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Billinaire by day dark night by night")
                .font(.system(size: 14))
                .padding(.top,8)
            
            HStack(spacing:40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)

                }
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }.padding()
            ProfileActionButtonView(isCurrentUser:false)
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
