//
//  FilterButtonView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 26/05/21.
//

import SwiftUI
enum TweetFilterOptions:Int,CaseIterable{
    case tweets
    case replies
    case likes
    var title:String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}

struct FilterButtonView: View {
    
    @Binding var slectedFilter:TweetFilterOptions
    
    private var padding:CGFloat {
        let rawValue=CGFloat(slectedFilter.rawValue)
        let count=CGFloat(TweetFilterOptions.allCases.count )
        return ((UIScreen.main.bounds.width/count) * rawValue)+16
    }
    private let underlineWidth=UIScreen.main.bounds.width/CGFloat(TweetFilterOptions.allCases.count)
    var body: some View {
        VStack(alignment:.leading){
            HStack{
            ForEach(TweetFilterOptions.allCases,id:\.self){ option in
                Button(
                    action: {
                        self.slectedFilter=option
                    }, label: {
                        Text(option.title)
                            .frame(width:underlineWidth)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    })
                
             }
            }
            Rectangle()
                .frame(width: underlineWidth-32, height: 3,alignment: .center)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.leading,padding)
                .animation(.spring())
          }
        }
    
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(slectedFilter:.constant(.tweets))
    }
}
