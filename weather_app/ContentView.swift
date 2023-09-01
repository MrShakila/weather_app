//
//  ContentView.swift
//  weather_app
//
//  Created by User on 2023-09-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.green,.blue,.white], startPoint:.topLeading, endPoint:.bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Colombo").font(.system(size: 32,weight: .bold)).foregroundColor(.white).padding()
                Spacer()
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
