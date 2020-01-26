//
//  StockVieModel.swift
//  StocksService
//
//  Created by Vadiraj Hippargi on 1/25/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import Foundation

struct StockViewModel {
    let stock:Stock
    
    var symbol :String {
        return self.stock.symbol
    }
    
    var description :String {
        return self.stock.description
    }
    var price :String {
        return String(format: "%.2f" ,  self.stock.price)
    }
    
    var change :String {
        return self.stock.change
    }

}
