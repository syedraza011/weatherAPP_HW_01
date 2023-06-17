//
//  GridView.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/13/23.
//

import SwiftUI

struct   GridView: View {
    var body: some View {
        let details = [
            Weather(image: "wind", weatherConditon: "Wind", temperature: "8 mph", notes: "Sunny"),
            Weather(image: "cloud.bolt.rain.fill", weatherConditon: "RAINFALL", temperature: "0\" in last 24 hours", notes: "None expected in next 10 days"),
            Weather(image: "thermometer.sun.fill", weatherConditon: "FEELS LIKE", temperature: "71°", notes: "Similar to the actual temperature"),
            Weather(image: "humidity.fill", weatherConditon: "Humidity", temperature: "45 %", notes: "The dew point is 47° right now"),
            Weather(image: "wind", weatherConditon: "VISIBILITY", temperature: "10 mi", notes: "It's perfectly clear"),
            Weather(image: "i.circle", weatherConditon: "PRESSURE", temperature: "29.95 inHg", notes: "Low to high")
        ]
        
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("New York")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                
                Text("70° | Sunny")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ForEach(details) { detail in
                            WeatherView(weather: detail)
                                .padding(.horizontal)
                        }
                    }
                    .padding(30)
                }
            }
        }
        .background(Color.blue.opacity(0.4))
    }
}

struct WeatherView: View {
    var weather: Weather
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: weather.image)
                Text(weather.weatherConditon)
                    .bold()
            }
            
            VStack(alignment: .leading) {
                Text(weather.temperature)
                    .font(.system(size: 30))
                    .lineLimit(2)
                    .padding(20)
                
                Text(weather.notes)
                    .font(.subheadline)
                    .lineLimit(2)
            }
        }
        .padding(10)
        .frame(width: 200, height: 200)
        .background(Color.blue.opacity(0.8))
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}

struct Weather: Identifiable {
    let id = UUID()
    let image: String
    let weatherConditon: String
    let temperature: String
    let notes: String
}

//struct GridView: View {
//    let data = (1...100).map {"item\($0)"}
//    var body: some View {
//        let  coloms:[GridItem]=[
//            GridItem (.adaptive(minimum: 190, maximum: 25000), spacing: 10, alignment: .center)
//        ]
//        NavigationView{
//
//            ScrollView {
//                LazyVGrid(columns: coloms) {
//                    ForEach(data, id: \.self) { item in
//                        NavigationLink( destination: Text(item)){
//                            HStack (spacing: 20){
//                                VStack {
//                                    Text("The Due Point is 47 now")
//                                        .padding()
////                                    Text("The Due Point is 47 now")
////    //                                Text(item)
//                                }
//                                .background(.green)
////                                Text("The Due Point is 47 now")
//////                                Text(item)
//                            }
////
//                        }
//
//                    .padding()
//
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                }
//                                        }
////                .navigationTitle("Grids")
//            }
//        }
//    }
//}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
