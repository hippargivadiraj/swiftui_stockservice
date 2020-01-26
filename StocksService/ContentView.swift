//
//  ContentView.swift
//  StocksService
//
//  Created by Vadiraj Hippargi on 1/25/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        UITableView.appearance().backgroundColor = UIColor.black
         UITableViewCell.appearance().backgroundColor = UIColor.black
        
    }
    
    @State private var searchTerm: String = ""
    var body: some View {
        NavigationView{
            ZStack(alignment: .leading){
                Color.black
                Text("Jan 25 2020")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -400)
                SearchView(searchTerm: self.$searchTerm)
                    .offset(y: -350)
                
                           
            }
            .navigationBarTitle("Stocks")
        }.edgesIgnoringSafeArea(Edge.Set(.bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( )
    }
}
