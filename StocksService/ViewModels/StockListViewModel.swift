//
//  StockListViewModel.swift
//  StocksService
//
//  Created by Vadiraj Hippargi on 1/25/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published  var searchTerm = ""
   @Published var stocks :[StockViewModel] = [StockViewModel]()
    
    //MARK: - LOAD FUNCTION
    func load()  {
        fetchStock()
    }
    
    
      //MARK: - FETCHSTOCK FUNCTION
    func fetchStock( ) {
        
        Webservice().getStocks { stocks  in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
                
            }
        }
    }
}

