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
                .font(.largeTitle)
                .padding()
            HStack{
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("+") {
                        self.count += 1
                    }
                }.frame(width: 75, height: 100)
                
                ZStack {
                    Circle()
                        .fill(Color.clear)
                        .overlay(
                            Circle()
                                .stroke(Color.green, lineWidth: 2)
                        )
                    Text("\(count)")
                        .font(.system(size: 36))
                }
                .frame(width: 100, height: 100)
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("-") {
                        self.count -= 1
                    }
                }.frame(width: 75, height: 100)
                
            }.padding()
            
            HStack {
                Spacer()
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("+10") {
                        self.count += 10
                    }
                }.frame(width: 75, height: 100)
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("+ Random") {
                        let randomInt = Int.random(in: 1..<10)
                        self.count += randomInt
                    }
                }.frame(width: 75, height: 100)
            
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("Random -") {
                        let randomInt = Int.random(in: 1..<10)
                        self.count -= randomInt
                    }
                }.frame(width: 75, height: 100)
        
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("-10") {
                        self.count -= 10
                    }
                }.frame(width: 75, height: 100)
                
                Spacer()
            }
            
            HStack {
                Spacer()
                
                ZStack {
                    Circle().fill(Color.yellow)
                    Button("Reset") {
                        self.count = 0
                    }
                }.frame(width: 100, height: 100)

                Spacer()
            }
            
            Text("2024 Andy Clements EI3KF")
                .font(.footnote)
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
