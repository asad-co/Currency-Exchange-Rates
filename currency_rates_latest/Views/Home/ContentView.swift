//
//  ContentView.swift
//  currency_rates_latest
//
//  Created by Kstom Glasses on 02/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var userAmount: String = "100"
    @State private var convertedAmount: String = "€92.51"
    
    var body: some View {
        VStack {
            Text("Currency Converter")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
            
            Spacer()
            CurrencyCard(
                currencyName: "US Dollar",
                currencyFlag: "us_flag",
                amount: $userAmount,
                isEditable: true,
                type:"number"
            )
            
            Image(systemName: "arrow.up.arrow.down")
                .font(.largeTitle)
                .foregroundColor(.gray)
            
            
            CurrencyCard(
                currencyName: "EU Euro",
                currencyFlag: "eu_flag",
                amount: $convertedAmount,
                isEditable: false,
                type:"number"
            )
            
            Spacer()
        }
        .background(Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all))
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
