//
//  CustomSearchBar.swift
//  SnowPlace
//
//  Created by Maksymilian Patoń on 10/02/2023.
//

import SwiftUI

struct CustomSearchBar: View {
    
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: $searchText)
            
        }
        .padding(EdgeInsets(top:  7, leading: 8, bottom: 7, trailing: 8))
        .font(.headline)
        .background(.ultraThinMaterial)
        .foregroundColor(.white.opacity(0.6))
        .cornerRadius(10)
    }
}
 
struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar()
    }
}
