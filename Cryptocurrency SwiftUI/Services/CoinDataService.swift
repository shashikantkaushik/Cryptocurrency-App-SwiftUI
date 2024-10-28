//
//  CoinDataService.swift
//  Cryptocurrency SwiftUI
//
//  Created by Shashi Kant on 09/10/24.
//

import Foundation
import Combine
class CoinDataService{
    
    @Published var allCoins:[CoinModel]=[]
    var coinSubsciption:AnyCancellable?
    init(){
        getCoint()
    }
    
    private func getCoint(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }

        coinSubsciption = NetworkingManager.download(url: url)
            
                .decode(type:[CoinModel].self, decoder:JSONDecoder())
                .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self](returnCoins) in
                    self?.allCoins = returnCoins
            self?.coinSubsciption?.cancel()
                })
      
            
                          
                        }
//                .store(in: &cancellables)
                }
        
