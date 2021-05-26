//
//  SearchView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText=""
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText).padding()
            VStack (alignment:.leading){
                ForEach(0..<19){ _ in
                    HStack{Spacer()}
                  
                    NavigationLink(
                        destination: UserPRofileView(),
                        label: {
                            UserCell()
                        })
                    
                
                }
            }.padding(.leading)
        }
       
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
