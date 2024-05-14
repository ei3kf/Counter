//
//  ContentView.swift
//  Counter
//
//  Created by Andrew Clements on 14/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Counter")
                .font(.title)
                .padding()
            HStack{
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("+") {
                        self.count += 1
                    }
                }.frame(width: 100, height: 100)
                
                ZStack() {
                    Rectangle().fill(Color.clear)
                    Text("\(count)")
                }.frame(width: 100, height: 100)
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("-") {
                        self.count -= 1
                    }
                }.frame(width: 100, height: 100)
                
            }.padding()
            
            HStack {
                Spacer()
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("+10") {
                        self.count += 10
                    }
                }.frame(width: 100, height: 100)
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("Reset") {
                        self.count = 0
                    }
                }.frame(width: 100, height: 100)
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("-10") {
                        self.count -= 10
                    }
                }.frame(width: 100, height: 100)
                
                Spacer()
            }
            
            Text("2024 Andy Clements EI3KF")
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
