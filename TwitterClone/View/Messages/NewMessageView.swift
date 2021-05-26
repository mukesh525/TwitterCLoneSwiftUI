//
//  NewMessageView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText=""
    @Binding var show:Bool
    @Binding var startChat:Bool
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText).padding()
            VStack (alignment:.leading){
                ForEach(0..<19){ _ in
                    HStack{Spacer()}
                    Button(action:{
                        self.show.toggle()
                        self.startChat.toggle()
                        
                    } , label: {
                        UserCell()
                    })
                  
                }
            }.padding(.leading)
        }
       
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show:.constant(true), startChat:.constant(true))
    }
}

