//
//  Stock.swift
//  StocksService
//
//  Created by Vadiraj Hippargi on 1/25/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import Foundation

struct Stock:Decodable {
    let symbol:String
    let description:String
    let price:Double
    let change:String
}
