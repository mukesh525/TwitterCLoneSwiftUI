//
//  ConversationCell.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack{
                Image("venom-10").resizable().scaledToFill()
                    .clipped().frame(width: 56, height: 56)
                    .cornerRadius(28)
                VStack  (alignment: .leading, spacing: 4){
                    Text("batman").font(.system(size: 14)).fontWeight(.semibold)
                    Text("Longer meesage text to see what hasppens if i do this ").font(.system(size: 15)).lineLimit(2)
                }
                .foregroundColor(.black)
                .padding(.trailing)
                
            }
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
