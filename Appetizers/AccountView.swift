//
//  AccountView.swift
//  Appetizers
//
//  Created by Adam Gerber on 10/11/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView{
            Text("Account")
                .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
