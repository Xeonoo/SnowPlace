//
//  MainView.swift
//  SnowPlace
//
//  Created by Maksymilian Patoń on 09/02/2023.
//

import SwiftUI



struct MainView: View {
    
    @State var selectedTab: Tabs = .account
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab){
                
                
                Slopes()
                    .tag(Tabs.slope)
                
                SearchView()
                    .tag(Tabs.search)
                
                Text("Dodaj cosik ")
                    .tag(Tabs.add)
                
                Text("Account")
                    .tag(Tabs.account)
                
                Text("Mores")
                    .tag(Tabs.more)
                
            }
            CustomBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.keyboard)
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
