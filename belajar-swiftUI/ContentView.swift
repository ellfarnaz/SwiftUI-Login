//
//  ContentView.swift
//  belajar-swiftUI
//
//  Created by ellfarnaz on 30/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<30) { item in
                HStack {
                        Image("atom")
                      
                            .resizable()
                            .scaledToFit()
                            .frame(height: 55.0)
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Table View Example")
                                .fontWeight(.bold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.75)
                                .font(.subheadline)
                            
                            HStack {
                                Text("Juli, 30 2024")
                                    .font(.subheadline)
                                    .foregroundStyle(.mycolor)
                                Text("enjoy")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.footnote)
                            }
                            
                    
                        
                    }
                    .listRowBackground(Color.clear)
                }
                .navigationTitle(Text("TableView"))
                .background(Color.gray)
            }
            
            
        }
        .background(Color.mycolor)
        
        
    }
}

#Preview {
    ContentView()
}
