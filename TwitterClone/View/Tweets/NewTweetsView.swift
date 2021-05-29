//
//  NewTweetsView.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 27/05/21.
//

import SwiftUI

struct NewTweetsView: View {
    @Binding var isPresented:Bool
    @State var captionText:String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width:64,height:64)
                        .cornerRadius(64/2)
                    TextArea("What's Happening?", text: $captionText)
                    Spacer() 
                }.padding()
                .navigationBarItems(leading:Button(action: {
                    isPresented.toggle()
                }, label: {
                      Text("Cancel").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                     }),
                     trailing:Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Tweet")
                             .padding(.horizontal)
                            .padding(.vertical,8)
                            . background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                 }))
                Spacer()
            }
           
        }
    }
}

struct NewTweetsView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetsView(isPresented:.constant(true))
    }
}
