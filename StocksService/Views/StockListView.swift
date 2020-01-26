//
//  StockListView.swift
//  StocksService
//
//  Created by Vadiraj Hippargi on 1/26/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct StockListView: View {
    
    let stocks:[StockViewModel]
    var body: some View {
        List(self.stocks, id: \.symbol ) { stock in
            StockCellView(stock: stock)
            
        }
 
    }
}

struct StockCellView: View {
    
    
    let stock: StockViewModel
    
    var body : some View {
        return HStack{
            VStack (alignment: .leading){
                Text(stock.symbol)
                    .font(.custom("Arial", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                Text(stock.description)
                .font(.custom("Arial", size: 18))
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
            }
            Spacer()
            VStack(alignment: .trailing){
                Text(stock.price)
                    .font(.custom("Arial", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                .foregroundColor(Color.white)
                Button(stock.change){
                    
                }
                .frame(width: 75)
            .padding(5)
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(6)
            }
        }
    }
    
    
    
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        
        let stock = Stock(symbol: "KLM", description: "KLM Technologies", price: 300, change: "-1.3")
        return StockListView(stocks: [StockViewModel(stock: stock)])
    }
}
