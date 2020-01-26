//
//  Webservice.swift
//  StocksService
//
//  Created by Vadiraj Hippargi on 1/25/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import Foundation

class Webservice  {
    
    func getStocks(completion: @escaping ( ([Stock]?) -> Void )) {
        
        guard let url = URL(string: "https://cord-bubbler.glitch.me/stocks") else {
            fatalError("Could Not Read the URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil) : completion(stocks)
            
            
        }.resume()
    }
}
