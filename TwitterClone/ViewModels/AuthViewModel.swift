//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 29/05/21.
//

import SwiftUI
import Firebase

class AuthViewModal:ObservableObject {
    
    
    
    @Published var userSession:FirebaseAuth.User?
    @Published var isAuthenticating=false
    @Published var error : Error?
    @Published var user: User?
    
    
    
    init(){
        userSession=Auth.auth().currentUser
    }
    
    
    
    func Login(email:String,password:String) {
        
         Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Debug: Failed to login: \(error.localizedDescription)")
                return
            }
            self.userSession=Auth.auth().currentUser
            print("Debug: Sucessfully logged in")
        }
    }
    
    func signOut(){
        userSession=nil
        try? Auth.auth().signOut()
    }
    
    
    
    func Register(email:String,password:String,username:String,fullname:String,profileImage:UIImage) {
      guard let imageData=profileImage.jpegData(compressionQuality: 0.3) else {return}
        let filename = NSUUID().uuidString
        let storageRef=Storage.storage().reference().child(filename)
        storageRef.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("Debug Failed to upload image  \(error.localizedDescription)" )
                return
            }
            
            storageRef.downloadURL { url, _ in
                guard let profileImageUrl=url?.absoluteString else {return}
                Auth.auth().createUser(withEmail: email, password: password){  result, error in
                    if let error=error {
                        print("Debug error  \(error.localizedDescription)" )
                        return
                    }
                    guard let user=result?.user else {return}
                    
                    let data = ["email":email,
                                "username":username,
                                "fullname":fullname,
                                "profileImage":profileImageUrl,
                                "uid":user.uid
                    ]
                    Firestore.firestore().collection("users").document(user.uid).setData(data){ _ in
                        
                        print("Debug Sucessfully uploaded user data")
                     
                    }
                    
                   
            }
        }
        
     
          
            
        }
        
        
        
    }
}
