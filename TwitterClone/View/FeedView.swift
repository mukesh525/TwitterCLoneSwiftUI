//
//  FeedView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 24/05/21.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewTweetView=false
    @EnvironmentObject var viewModal: AuthViewModal
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                VStack{
                    ForEach(0..<100){_ in
                       TweetCell()
                         
                    }
                }.padding()
                
            }
            Button(action: {
                viewModal.signOut()
               // isShowingNewTweetView.toggle()
            }, label: {
               Image("tweet")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .frame(width: 32, height: 32)
                .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            .fullScreenCover(isPresented: $isShowingNewTweetView){
                NewTweetsView(isPresented: $isShowingNewTweetView)
            }
        
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
