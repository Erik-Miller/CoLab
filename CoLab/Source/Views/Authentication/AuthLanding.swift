//
//  AuthLanding.swift
//  CoLab
//
//  Created by Erik Miller on 1/7/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI
import Combine

struct AuthLanding: View {
    
    @State var showingSignIn = false
    @State var showingSignUp = false
    
    
    
    var body: some View {

      NavigationView{
                VStack{
                Spacer()
                Text("Co.Lab").font(.title).fontWeight(.bold)
                Spacer()
                
                HStack{
                    Spacer()
                    NavigationLink(destination: SignInView()) {
                        Text("Sign In")
                    
                    }.padding(.bottom, 20)
                    Spacer()
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                    
                    }.padding(.bottom, 20)
                    Spacer()
                }
            }.navigationBarTitle("") //this must be empty
            
            .navigationBarBackButtonHidden(true)
        }
    }
    }









struct AuthLanding_Previews: PreviewProvider {
    static var previews: some View {
        AuthLanding()
    }
}
