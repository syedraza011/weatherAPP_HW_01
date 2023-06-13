//
//  ContentView.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)


            ScrollView (.vertical ) {
                VStack {
                    Header()
                  
                    HourData()
                   
                    DailyData()
                       
                        .padding()
                 
                }
            }
        }
        
    }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
