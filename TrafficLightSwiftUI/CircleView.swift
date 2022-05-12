//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Максим Самусь on 12.05.2022.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
