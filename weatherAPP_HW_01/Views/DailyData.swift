//
//  DailyData.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct DailyData: View {
    var body: some View {
    
        ScrollView (showsIndicators: false){
            VStack(spacing: 10) {
            
                Text("10-DAY FORECAST")
                    .frame(width: 200, height: 20)
                    .background(Color.blue.opacity(0.8))
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    
                ForEach(DayData.mockDayData) { day in
                    HStack(spacing: 10) {
                        Text(day.day)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        Image(systemName: day.image)
                            .foregroundColor(.yellow)
                        
                        //                    Spacer()
                        
                        Text(day.lowTemp)
                        //                        .font(.subheadline)
                            .font(.system(size: 20))
                        //                        .foregroundColor(.blue)
                            .foregroundColor(Color(red: 0, green: 0, blue: 0.9).opacity(0.2))
                            .bold()
                        LineView()
                            .frame(width: 50, height: 2)
                        Text(day.highTemp)
                        //                        .font(.subheadline)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                    
                }
//                          .padding(10)
                         
//                            .cornerRadius(10)
            }
        }
        .background(Color.blue.opacity(0.8))
        .cornerRadius(15)
        .padding([.leading, .trailing], 10)
           .frame(maxWidth: .infinity)
    }
}

struct DailyData_Previews: PreviewProvider {
    static var previews: some View {
        DailyData()
    }
}
