//
//  SignUpView.swift
//  CoLab
//
//  Created by Erik Miller on 1/11/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
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
                            
                        }.padding()
                        Section{
                            NavigationLink(destination: HomeView()) {
                                Text("Show Detail View")
                            }
                        }
                        }.navigationBarTitle(Text("Sign Up"))
                    .navigationBarTitle("") //this must be empty
                    .navigationBarBackButtonHidden(true)
                    
                    }
                    }
        }

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

