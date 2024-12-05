//
//  ContentView.swift
//  currency_rates_latest
//
//  Created by Kstom Glasses on 02/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var amount: String = ""
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
            VStack(spacing:10){
                HStack{
                    Text("US Dollar")
                        .font(.headline)
                    Spacer()
                    Image(systemName: "chevron.down")
                }
                Divider()
                HStack{
                    Image(systemName: "flag.fill")
                        .resizable()
                        .frame(width: 40, height: 25)
                        .clipShape(Rectangle())
                    Spacer()
                    TextField("Enter amount", text: $amount)
                                            .keyboardType(.decimalPad)
                                            .multilineTextAlignment(.trailing)
                                            .font(.title2)
                }
            }.padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
            
            Image(systemName: "arrow.up.arrow.down")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
            
            VStack(spacing: 10) {
                            HStack {
                                Text("EU Euro")
                                    .font(.headline)
                                Spacer()
                                Image(systemName: "chevron.down") // Replace with dropdown arrow
                            }
                            Divider()
                            HStack {
                                Image(systemName: "flag.fill")
                                    .resizable()
                                    .frame(width: 40, height: 25)
                                    .clipShape(Rectangle())
                                Spacer()
                                Text(convertedAmount)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.trailing)
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                        
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
