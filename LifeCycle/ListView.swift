//
//  ListView.swift
//  LifeCycle
//
//  Created by Tiffany Cai on 2/20/21.
//

import SwiftUI

struct ListView: View {
    var icon: String
    var title: String
    var count: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(title)
            Spacer()
            Text(count)
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(icon: "house.circle.fill", title:"House", count: "1")
            .previewLayout(.sizeThatFits)
    }
}
