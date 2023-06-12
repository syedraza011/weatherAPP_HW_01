//
//  Header.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
   
        
        VStack (spacing: 10){
           
            Text("New York")
                .font(.title)
            Text("70°")
                .font(.title)
                .bold()
            Text("Sunny")
            Text("H:76° L:51°")
        }
        .padding()
        
    }
     
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
