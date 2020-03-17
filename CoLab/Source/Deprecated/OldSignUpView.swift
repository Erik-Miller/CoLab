////
////  SignUpView.swift
////  CoLab
////
////  Created by Erik Miller on 1/11/20.
////  Copyright © 2020 Erik Miller. All rights reserved.
////
//
//import SwiftUI
//
//struct SignUpView: View{
//    @State var email: String = ""
//    @State var password: String = ""
//    @State var businessName: String = ""
//    @State var businessDescription: String = ""
//    @State var businessType: String = ""
//    
//    
//    
//    var body: some View{
//        
//        NavigationView{
//        VStack{
//            VStack{
//                ZStack{
//                    Image("black-background")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                    Text("Sign Up").font(.title).foregroundColor(.white).fontWeight(.bold)
//                }
//            }
//            
//            VStack(alignment: .leading){
//                Form{
//                Text("Email")
//                TextField("Enter your email", text: $email)
//                    .padding().background(Color.customTextFieldBackground)
//                Text("Password")
//                TextField("Enter your password", text: $password)
//                    .padding().background(Color.customTextFieldBackground)
//                Text("Business Name")
//                TextField("Enter your password", text: $password)
//                    .padding().background(Color.customTextFieldBackground)
//                Text("Business Description")
//                TextField("Enter your password", text: $password)
//                    .padding().background(Color.customTextFieldBackground)
//                
//            
//            }.padding()
//            
//            
//            
//            VStack{
//                
//                
//                Button(action: {
//                    // Add action here
//                    
//                }) {
//                    HStack{
//                        Spacer()
//                        
//                        Text("Sign Up")
//                        
//                        Spacer()
//                    }.padding().background(Color(.black)).foregroundColor(.white)
//                }
//            }.padding(.bottom, 100)
//        }
//    }
//}
//}
//}
//
//struct SignUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUpView()
//    }
//}
