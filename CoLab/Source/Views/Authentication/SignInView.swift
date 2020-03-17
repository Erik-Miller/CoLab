//
//  SignInView.swift
//  CoLab
//
//  Created by Erik Miller on 1/11/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct SignInView: View {
        @State var email: String = ""
        @State var password: String = ""
    
    
        
        var body: some View {
            NavigationView{
                Form{
                    Section{
                        Text("Email")
                        TextField("Enter your email", text: $email)
                        Text("Password")
                        TextField("Enter Your Password", text: $email)
                        
                    }
                    Section{
                        Button(action: {
                        // activate theme!
                        }) {
                            Text("Sign Up")
                        }
                        
                        
                }.navigationBarTitle(Text("Sign In"))
                    .navigationBarBackButtonHidden(true)
                
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
