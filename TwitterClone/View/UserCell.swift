//
//  UserCell.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("venom-10").resizable().scaledToFill()
                .clipped().frame(width: 56, height: 56)
                .cornerRadius(28)
            VStack  (alignment: .leading, spacing: 4){
                Text("batman").font(.system(size: 14)).fontWeight(.semibold)
                Text("Mukesh Jha").font(.system(size: 14))
            }.foregroundColor(.black)
    }
}
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
