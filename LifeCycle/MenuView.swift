//
//  MenuView.swift
//  LifeCycle
//
//  Created by Tiffany Cai on 2/19/21.
//

import SwiftUI

struct MenuView: View {
    var image: String
    var title: String
    var count: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: image)
                Spacer()
                Text(count)
            }
            .font(.largeTitle)
            HStack{
                Text(title)
                Spacer()
            }
            .font(.title)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8.0)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View{
        MenuView(image: "calendar.circle.fill", title:"Today", count: "6")
            .previewLayout(.sizeThatFits)
    }
}
