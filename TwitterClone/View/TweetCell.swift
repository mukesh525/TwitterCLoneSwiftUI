//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack (alignment:.top,spacing:12) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56/2)
                    .padding(.leading)
                VStack(alignment: .leading,spacing:4){
                    HStack {
                        Text("Bruce Wayne").font(.system(size: 14)).fontWeight(.semibold)
                        Text("@batman •").foregroundColor(.gray)
                        Text("2w").foregroundColor(.gray)
                    }
                    Text("ITs not who i ma what i do thats define me")
                    
                }
            }.padding(.bottom)
            .padding(.trailing)
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
            }.padding(.horizontal)
            .foregroundColor(.gray)
            
            
             Divider()
            
        }
        .padding(.leading,-16)
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
