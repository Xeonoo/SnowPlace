//
//  CustomSearchBar.swift
//  SnowPlace
//
//  Created by Maksymilian Patoń on 10/02/2023.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0.0) {
                Text("Welcome!")
                    .fontWeight(.bold) 
                    .font(.title3)
                    .foregroundColor(.white)
                CustomSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top )
        }
        .background(LinearGradient(colors: [Color(.black)], startPoint: .top, endPoint: .bottom))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
