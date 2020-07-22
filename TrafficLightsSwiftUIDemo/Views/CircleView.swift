//
//  CircleView.swift
//  TrafficLightsSwiftUIDemo
//
//  Created by Eduard Laryushkin on 21.07.2020.
//  Copyright © 2020 edlar.ru. All rights reserved.
//

import SwiftUI

struct CircleView: View {
    let color: UIColor
    let isActive: Bool
    
    var body: some View {
        ZStack {
            Color(color)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .opacity(isActive ? 1.0 : 0.2)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, isActive: true)
    }
}
