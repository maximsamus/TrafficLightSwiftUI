//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Максим Самусь on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "START"
    @State private var redValue = 0.3
    @State private var yellowValue = 0.3
    @State private var greenValue = 0.3
    @State private var currentLight = CurrentLight.red
    var body: some View {
        
        VStack {
            Circle()
                .foregroundColor(.red.opacity(redValue))
                .frame(width: 120, height: 120)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Circle()
                .foregroundColor(.yellow.opacity(yellowValue))
                .frame(width: 120, height: 120)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Circle()
                .foregroundColor(.green.opacity(greenValue))
                .frame(width: 120, height: 120)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Spacer()
            Button(action: buttonPressed) {
                Text(text)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.blue)
            }
        }
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        
    }
    
    func buttonPressed() -> Void {
        
        text = "NEXT"
        
        switch currentLight {
        case .red:
            greenValue = 0.3
            redValue = 1
            currentLight = .yellow
        case .yellow:
            redValue = 0.3
            yellowValue = 1
            currentLight = .green
        case .green:
            yellowValue = 0.3
            greenValue = 1
            currentLight = .red
        }
    }
    enum CurrentLight {
        case red, yellow, green
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

