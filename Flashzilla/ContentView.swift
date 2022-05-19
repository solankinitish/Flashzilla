//
//  ContentView.swift
//  Flashzilla
//
//  Created by Nitish Solanki on 09/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    
    var body: some View {
        Text("Hello, world!")
            .rotationEffect(finalAmount + currentAmount)
            .gesture(
                RotationGesture()
                    .onChanged { angle in
                        currentAmount = angle
                    }
                    .onEnded { angle in
                        finalAmount += currentAmount
                        currentAmount =  .zero
                    }
            
            )

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
