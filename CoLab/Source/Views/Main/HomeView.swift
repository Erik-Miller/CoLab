//
//  HomeView.swift
//  CoLab
//
//  Created by Erik Miller on 3/15/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI


// ### Home View for the app ###

struct HomeView: View {
   @EnvironmentObject var navigation: NavigationStack
    
   var body: some View {
       VStack{
          TitleView( title: "Home view",
             homeAction: {
                self.navigation.home()
          })
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
        }
        
//          List{
//             Text("Move to NextView").onTapGesture {
//                self.navigation.advance(
//                    NavigationItem( view: AnyView(NextView())))
//                }
//          }
        
        
// ### Chat View View for the app ###
struct NextView: View {
   @EnvironmentObject var navigation: NavigationStack
   var body: some View {
       VStack{
          BackView( title: "I am Next View",
             action:{ self.navigation.unwind() },
             homeAction: { self.navigation.home() })
          List{
             Text("I am NextView")
          }
      }
   }
}


//Entry Point to the app//
struct ContentView: View {
   var body: some View {
      NavigationHost()
        .environmentObject(NavigationStack(
           NavigationItem( view: AnyView(HomeView()))))
   }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
