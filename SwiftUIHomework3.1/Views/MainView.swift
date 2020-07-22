//
//  MainView.swift
//  SwiftUIHomework3.1
//
//  Created by Eduard Laryushkin on 21.07.2020.
//  Copyright © 2020 edlar.ru. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var ColorsActive = [true, false, false]
    
    var body: some View {
        VStack {
            ZStack {
                Color(.secondarySystemFill)
                    .frame(width: 200, height: 500)
                    .cornerRadius(10)
                VStack {
                    CircleView(color: .systemRed, isActive: ColorsActive[0])
                    CircleView(color: .systemYellow, isActive: ColorsActive[1])
                    CircleView(color: .systemGreen, isActive: ColorsActive[2])
                }
            }
            .padding()
            
            Spacer()
            
            Button(action: { self.changeActiveColor() }) {
                Text("Next")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color(UIColor.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    private func changeActiveColor() {
        for index in 0 ..< ColorsActive.count {
            if ColorsActive[index] == true {
                ColorsActive[index].toggle()
                if index + 1 < ColorsActive.count {
                    ColorsActive[index + 1].toggle()
                } else {
                    ColorsActive[0].toggle()
                }
                return
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
