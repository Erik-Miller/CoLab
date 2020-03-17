//
//  NavigationStack.swift
//  CoLab
//
//  Created by Erik Miller on 3/15/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct NavigationItem{
    var view: AnyView
}

final class NavigationStack: ObservableObject {
   @Published var viewStack: [NavigationItem] = []
   @Published var currentView: NavigationItem
   init(_ currentView: NavigationItem ){
      self.currentView = currentView
   }
   func unwind(){
      if viewStack.count == 0{
         return
      }
      let last = viewStack.count - 1
      currentView = viewStack[last]
      viewStack.remove(at: last)
   }
   func advance(_ view:NavigationItem){
      viewStack.append( currentView)
      currentView = view
   }
   func home( ){
      currentView = NavigationItem(view: AnyView(HomeView()))
      viewStack.removeAll()
   }
}

struct NavigationHost: View{
   @EnvironmentObject var navigation: NavigationStack
   
   var body: some View {
      self.navigation.currentView.view
   }
}



struct BackView: View{
   var title: String
   var action: ()->Void
   var homeAction: ()->Void
    
   var body: some View {
      ZStack{
         Rectangle().fill(Color.gray).frame( height: 40 )
         HStack{ Button( action: action){
            Image(uiImage: UIImage(
               systemName: "arrow.turn.down.left",
                  withConfiguration:   UIImage.SymbolConfiguration(pointSize: 20,
             weight: .bold, scale: .large))! )
    .padding(.leading, 20) }
    .foregroundColor(Color.black)
           Spacer()
           Text(title).padding(.leading, 20)
              .font(Font.system(size: 20))
              .padding(.trailing, 20)
           Spacer()
           Button( action: homeAction){
              Image(uiImage: UIImage(
                systemName: "house", withConfiguration:  UIImage.SymbolConfiguration(pointSize: 15.0,
               weight: .bold, scale: .large))! )
            .padding(.trailing, 20) }
            .foregroundColor(Color.black)
          }
      }
   }
}

struct TitleView: View{
   var title: String
   var homeAction: ()->Void
    
   var body: some View {
      ZStack{
        Rectangle().fill(Color.gray).frame( height: 40 )
        HStack{
           Spacer()
           Text(title).padding(.leading, 20)
             .font(Font.system(size: 20.0))
           Spacer()
           Button( action: homeAction){
              Image(uiImage: UIImage(systemName: "house", withConfiguration: UIImage.SymbolConfiguration(
                  pointSize: 15,   weight: .bold,
                  scale: .large))! )
            .padding(.trailing, 20) }
            .foregroundColor(Color.black)
           }
       }
    }
}

