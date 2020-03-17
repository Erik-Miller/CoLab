//
// UserView.swift
//  CoLab
//
//  Created by Erik Miller on 1/6/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView{
        VStack{
            //Spacer()
            TopView()
            Spacer()
            UserView()
            Spacer()
            ActionsView()
        }.background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).edgesIgnoringSafeArea(.top).edgesIgnoringSafeArea(.bottom)
           
            .navigationBarTitle("") //this must be empty
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
    }
}

struct TopView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "person").font(.system(size: 30))
                Spacer()
                Text("Co.Lab").fontWeight(.bold).font(.title)
                Spacer()
                Image(systemName: "message").font(.system(size: 30))
                Spacer()
            }
            
        }.padding(.top, 50)
    }
}

struct UserView: View {
    var body: some View {
        
        VStack {
            HStack{
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.red)
                        .frame(width: 240, height: 90)
                    Text("Wants to Collab with you").offset(y: -20)
                }.padding(.bottom, -50)
            }
            VStack{
                
                
                VStack{
                    Image("nike-test")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color(.black))
                    
                }
                HStack{
                    Spacer()
                        .frame(height: 2).background(Color(.black))
                    
                }
                VStack(alignment: .leading){
                    HStack{
                        Text("Nike").fontWeight(.bold).font(.title)
                        Spacer()
                        ZStack{
                            Capsule()
                                .fill(Color.gold)
                                .frame(width: 100, height: 30)
                            Text("Tier 1")
                        }
                    }.padding(.bottom, 10).cornerRadius(2)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                        .padding(.bottom, 10)
                }.padding()
            }.background(Color(.white))
        }//.frame(width: 380, height: 380)
            .cornerRadius(30)
            .shadow(radius: 5)
            .padding()
    }
}

struct ActionsView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    //add button action
                }) {
                    Text("Not Interested")
                        .padding().foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2))
                }
                Spacer()
                
                Button(action: {
                    //add button action
                }) {
                    Text("Let's Collab")
                        .foregroundColor(.white).fontWeight(.bold).padding().background(Color(.black)).cornerRadius(20)
                }
                Spacer()
            }
        }.padding(.bottom, 40)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
