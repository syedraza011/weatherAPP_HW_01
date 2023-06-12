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
            Text("Sunny conditons will continue all day.")
                .foregroundColor(.white)
                .background(Color.blue.opacity(0.8))
            HStack {
               
                ForEach(HourlyData.mockData) { hour in
                    VStack(spacing: 20) {
                        Text(hour.time) // Display "9am" instead of just "9"
                            .frame(width: 60, height: 30) // Adjust the frame width to accommodate the text
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
           
      
            .background(Color.blue.opacity(0.8))
           
        }
        .cornerRadius(15)
        .padding([.leading, .trailing], 20)
           .frame(maxWidth: .infinity)

    }
       
}

struct HourData_Previews: PreviewProvider {
    static var previews: some View {
        HourData()
    }
}
