//
//  MultiUI.swift
//  multiplicacion
//
//  Created by Edgar Narvaez on 16/05/23.
//

import SwiftUI

struct MultiUI: View {
    var body: some View {
            VStack {
                
                HStack {
                    Image(systemName: "arrow.left").foregroundColor(Color.yellow)
                    Spacer()
                    Text("Multiplicaciones   Nivel 3   Puntuación 0").foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "arrow.clockwise").foregroundColor(Color.yellow)
                }.frame(width: .infinity,height: 30).background(Color.gray)
                    
                Spacer()
                HStack {
                    MultiplicationTable()
                }
                .padding()
                
                HStack{
                    Text("4").frame(width: 30, height: 30).background(Color.gray)
                    Text("X").font(.system(size: 30)).foregroundColor(Color.yellow).frame(width: 30, height: 30)
                    Text("5").frame(width: 30, height: 30).background(Color.gray)
                    Text("=").font(.system(size: 30)).foregroundColor(Color.yellow).frame(width: 30, height: 30)
                    Text("").frame(width: 30, height: 30).background(Color.gray)
                }
                Text("Revisar").frame(width: .infinity).padding().background(Color.gray)
                Spacer()
                HStack{
                    Spacer()
                    Image(systemName: "xmark").foregroundColor(Color.yellow)
                    Spacer()
                    Image(systemName: "function").foregroundColor(Color.yellow)
                    Spacer()
                    Image(systemName: "divide").foregroundColor(Color.yellow)
                    Spacer()
                    Image(systemName: "house.fill").foregroundColor(Color.yellow)
                    Spacer()
                }.frame(width: .infinity, height: 50).background(Color.black)
            }.background(Color.cyan)
    }
}

struct MultiUI_Previews: PreviewProvider {
    static var previews: some View {
        MultiUI()
    }
}
