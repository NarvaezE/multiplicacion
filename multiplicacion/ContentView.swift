//
//  ContentView.swift
//  multiplicacion
//
//  Created by Edgar Narvaez on 14/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            MultiUI() 
            .tabItem {
                Label("Tab 1", systemImage: "1.square.fill")
            }
                        
            Text("Tab 2")
            .tabItem {
                Label("Tab 2", systemImage: "2.square.fill")
            }
                    
            Text("Tab 3")
            .tabItem {
                Label("Tab 3", systemImage: "3.square.fill").foregroundColor(Color.yellow)
            }
        }.background(Color.gray)
    }
}

struct MultiplicationTable: View {
    var body: some View {
            VStack {
                ForEach(1...10, id: \.self) { row in
                    HStack {
                        ForEach(1...10, id: \.self) { column in
                            if column == 1 && row != 1{
                                
                                Text("\(row-1)")
                                    .font(.headline)
                                    .frame(width: 30, height: 30).background(Color.red)
                            }else if row == 1 && column == 1{
                                Text("X")
                                    .font(.headline)
                                    .frame(width: 30, height: 30).background(Color.red)
                            }
                            else if row == 1 && column != 1{
                                
                                Text("\(column-1)")
                                        .font(.headline)
                                        .frame(width: 30, height: 30).background(Color.red)
                            } else {
                                Rectangle()
                                    .frame(width: 30, height: 30).foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
