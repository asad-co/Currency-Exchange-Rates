//
//  CurrencyCard.swift
//  currency_rates_latest
//
//  Created by Kstom Glasses on 05/12/2024.
//

import SwiftUI

struct CurrencyCard: View {
    
    let currencyName: String 
    let currencyFlag: String
    @Binding var amount: String
    let isEditable: Bool
    let type: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text(currencyName)
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.down")
            }
            
            Divider()
            HStack {
                Image(currencyFlag)
                    .resizable()
                    .frame(width: 40, height: 25)
                    .clipShape(Rectangle())
                Spacer()
                
                if isEditable {
                    TextField("Enter amount", text: $amount)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .font(.title2)
                } else {
                    Text(amount)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)    }
}

