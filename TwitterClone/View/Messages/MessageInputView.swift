//
//  MessageInputView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 25/05/21.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var MessageText: String
    var body: some View {
        HStack {
            TextField("Message...",text:$MessageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight:30)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Send")
            })
        }
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(MessageText:.constant("Message..."))
    }
}
