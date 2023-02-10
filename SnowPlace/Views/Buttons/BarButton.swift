//
//  BarButton.swift
//  SnowPlace
//
//  Created by Maksymilian Patoń on 09/02/2023.
//

import SwiftUI

struct BarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        
        GeometryReader { geo in
        
        if isActive {
            
            Rectangle()
                .foregroundColor(.green)
                .frame(width: geo.size.width/2, height: 4)
                .padding(.leading, geo.size.width/4)
        }
        
        VStack (alignment: .center, spacing: 4) {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            Text(buttonText)
        }
        .frame(width: geo.size.width, height: geo.size.height)
            
    }
       
    }
}

struct BarButton_Previews: PreviewProvider {
    static var previews: some View {
        BarButton(buttonText: "search", imageName: "eye", isActive: true)
    }
}
