////
////  SignInView.swift
////  CoLab
////
////  Created by Erik Miller on 1/11/20.
////  Copyright © 2020 Erik Miller. All rights reserved.
////
//
//import SwiftUI
//
//struct SignInView: View{
//    @State var email: String = ""
//    @State var password: String = ""
//
//    var body: some View{
//        VStack{
//            VStack{
//                ZStack{
//                    Image("light-background")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                    Text("Sign In").font(.title).foregroundColor(.black).fontWeight(.bold)
//                }
//            }
//
//            VStack(alignment: .leading){
//                Text("Email")
//                TextField("Enter your email", text: $email)
//                    .padding().background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
//                Text("Password")
//                TextField("Enter your password", text: $password)
//                    .padding().background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
//
//            }.padding()
//
//
//            VStack{
//                Button(action: {
//                    // Add action here
//                }) {
//                    HStack{
//                        Spacer()
//                        Text("Sign In")
//                        Spacer()
//                    }.padding().background(Color(.black)).foregroundColor(.white)
//                }
//            }.padding(.bottom, 100)
//        }
//        }
//}
//
//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
