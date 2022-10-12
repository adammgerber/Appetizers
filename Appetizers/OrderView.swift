//
//  OrderView.swift
//  Appetizers
//
//  Created by Adam Gerber on 10/11/22.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView{
            Text("Orders")
                .navigationTitle("Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
