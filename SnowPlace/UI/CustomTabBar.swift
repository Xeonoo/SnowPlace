//
//  CustomBar.swift
//  SnowPlace
//
//  Created by Maksymilian Patoń on 09/02/2023.
//

import SwiftUI


enum Tabs: Int {
    case search = 0
    case account = 1
    case slope = 2
    case more = 3
    case add  = 4
}

struct CustomBar: View {
    
    
    @Binding var selectedTab: Tabs 
    
    var body: some View {
        
        HStack {
                HStack {
                    
                    Button {
                        // s
                        selectedTab = .slope
                        
                    } label: {
                            BarButton(buttonText: "Slope", imageName: "figure.skiing.downhill", isActive: selectedTab == .slope)
                    }
                    .tint(.brown)
                    Button {
                        // switch to search
                        selectedTab = .search
                    } label: {
                        
                        BarButton(buttonText: "Search", imageName: "magnifyingglass", isActive: selectedTab == .search)
                        
                    }
                    .tint(.brown)
                    
                    Button {
                        // switch to Add
                        selectedTab = .add
                    } label: {
                        
                        VStack (alignment: .center, spacing: 4) {
                            Image(systemName: "plus.viewfinder")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 36, height: 36)
                            Text("Add Slope")
                        }
                    }
                    .tint(.green)
                    
                    Button {
                        // switch to account
                        
                        selectedTab = .account
                    } label: {
                        
                        
                        BarButton(buttonText: "Account", imageName: "person", isActive: selectedTab == .account)
                    }
                    .tint(.brown)
                    
                    Button {
                        // switch to search
                        selectedTab = .more
                    } label: {
                        
                        BarButton(buttonText: "More", imageName: "ellipsis", isActive: selectedTab == .more)
                        
                    }
                    .tint(.brown)
                    
                }
                .frame(height: 92)
                .background(.black)
            }
        }
}
struct CustomBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomBar(selectedTab: .constant(.account))
    }
}
