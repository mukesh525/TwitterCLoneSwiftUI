//
//  UserPRofileView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 26/05/21.
//

import SwiftUI

struct UserPRofileView: View {
    @State var slectedFilter:TweetFilterOptions = .tweets
    var body: some View {
        ScrollView{
        VStack{
            ProfileHeaderView()
                .padding()
            FilterButtonView(slectedFilter: $slectedFilter)
            ForEach(0..<9){
                tweet in
                TweetCell().padding()
            }
        }
        }.navigationTitle("batman")
    }
}

struct UserPRofileView_Previews: PreviewProvider {
    static var previews: some View {
        UserPRofileView()
    }
}
