//
//  CustomNavigation.swift
//  CoLab
//
//  Created by Erik Miller on 3/15/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct CustomNavigation: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


final class NavigationStack: ObservableObject {
   @Published var viewStack: [Customer] = []
   @Published var currentView: NavigationItem
   init(_ currentView: NavigationItem ){
      self.currentView = currentView
   }
}

struct CustomNavigation_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigation()
    }
}
