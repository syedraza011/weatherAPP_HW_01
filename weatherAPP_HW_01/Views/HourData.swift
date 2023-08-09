//
//  HourData.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct HourData: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack (alignment: .leading){
                       Text("Sunny conditions will continue all day.")
                           .foregroundColor(.white)
                           .font(.caption)
                           .opacity(0.5)
                           .background(Color.blue.opacity(0.8))
                           .padding(.leading, 10)
                       
                       HStack(spacing: 10) {
                           ForEach(HourlyData.mockData) { hour in
                               VStack {
                                   Text(hour.time)
                                       .frame(width: 60, height: 30)
                                       .font(.headline)
                                       .foregroundColor(.white)
                                   
                                   Image(systemName: hour.image)
                                       .foregroundColor(.yellow)
                                   
                                   Text(hour.temperature)
                                       .font(.subheadline)
                                       .foregroundColor(.white)
                               }
                           }
                       }
                   }
                   .background(Color.blue.opacity(0.8))
               }
               .cornerRadius(15)
               .padding([.leading, .trailing], 20)
               .frame(maxWidth: .infinity)
               .edgesIgnoringSafeArea(.all)
           }
    
       }


struct HourData_Previews: PreviewProvider {
    static var previews: some View {
        HourData()
    }
}
