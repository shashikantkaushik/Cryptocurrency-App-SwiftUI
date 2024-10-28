//
//  CoinRowView.swift
//  Cryptocurrency SwiftUI
//
//  Created by Shashi Kant on 02/10/24.
//

import SwiftUI

struct CoinRowView: View {
    let coin:CoinModel
    let showHoldingColumn:Bool
    var body: some View {
        HStack(spacing:0){
            leftColumn
            Spacer()
            
            if showHoldingColumn {
                centerColumn
            }
           rightColumn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {   
        Group{
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
            .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
        }
         
    }
}


extension CoinRowView{
    private var leftColumn:some View{
        HStack(spacing: 0 ){
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View{
        VStack(alignment: .trailing){
            Text(coin.currentHoldingsValue.asCurrencyWith6Decimals())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    private var rightColumn: some View{
        VStack(alignment: .trailing){
            Text("\(coin.currentPrice.asCurrencyWith2Decimals())")
                .fontWeight(.bold)
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asNumberString() ?? "")
                .foregroundColor((coin.priceChangePercentage24H ?? 0) >= 0 ?
                                 Color.theme.green :
                                    Color.theme.red)
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
