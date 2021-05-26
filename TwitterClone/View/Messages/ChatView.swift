//
//  ChatView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String=""
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading, spacing:4){
                    ForEach(MOCK_MESSAGE) {message in
                        MessageView(message:message)
                        
                    }
                }
            }.padding(.top)
            MessageInputView(MessageText: $messageText).padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

