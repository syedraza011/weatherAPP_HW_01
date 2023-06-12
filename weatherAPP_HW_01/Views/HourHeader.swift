//
//  HourHeader.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct HourHeader: View {
    var body: some View {
        Text("Sunny conditons will continue all day.")
           
            .frame(width: 350, height: 60)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(15)
            .padding([.leading, .trailing], 40)
    }
}

struct HourHeader_Previews: PreviewProvider {
    static var previews: some View {
        HourHeader()
    }
}
