//
//  ContentView.swift
//  Appetizers
//
//  Created by Adam Gerber on 10/11/22.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, .none)
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                        .environment(\.symbolVariants, .none)
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                        .environment(\.symbolVariants, .none)
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
