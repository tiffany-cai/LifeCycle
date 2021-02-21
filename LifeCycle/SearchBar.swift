//
//  SearchBar.swift
//  LifeCycle
//
//  Created by Tiffany Cai on 2/19/21.
//

import SwiftUI

struct SearchBar: View {
    
    @State var text: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $text)
        }.padding(4)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8.0)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
            .previewLayout(.sizeThatFits)
    }
}
