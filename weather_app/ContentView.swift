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
                Text("Colombo, LK").font(.system(size: 32,weight: .bold)).foregroundColor(.white).padding()

                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().frame(width: 180,height: 180).aspectRatio(contentMode: .fill)
                    Text("76'").font(.system(size: 40,weight: .medium)).foregroundColor(.white).padding()

                };   Spacer()
                
                HStack{
                
                    WeatherdayView(dayOfWeek: "Sun", imageName:"cloud.sun.rain.fill", tempruture: 20)
                    WeatherdayView(dayOfWeek: "Mon", imageName:"sun.max.fill", tempruture: 40)
                    WeatherdayView(dayOfWeek: "Wen", imageName:"cloud.snow.fill", tempruture: 15)
                    WeatherdayView(dayOfWeek: "Thu", imageName:"cloud.sun.rain.fill", tempruture: 16)
                    WeatherdayView(dayOfWeek: "Fri", imageName:"tornado", tempruture: 10)
                    
                }
                Spacer()
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

struct WeatherdayView: View {
    
    var dayOfWeek :String
    var imageName :String
    var tempruture :Int
    
    var body: some View {
        VStack(){
            Text(dayOfWeek).font(.system(size: 25,weight: .medium)).foregroundColor(.white).padding(5)
            Image(systemName: imageName).renderingMode(.original).resizable().frame(width: 40,height: 40).aspectRatio(contentMode: .fill)
            Text("\(tempruture)'").font(.system(size: 25,weight: .bold)).foregroundColor(.white).padding(5)
            
        }
    }
}
