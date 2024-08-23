//
//  State_and_Binding.swift
//  My SwiftUI
//
//  Created by ChenZhen on 23/8/24.
//

import SwiftUI

struct State_and_Binding: View {
    
    @State var swiftyColor: Color = .red
    @State var swiftyOpacity: Double = 0.7
    
    var body: some View {
        VStack {
            SwiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(swiftyOpacity)
                .background(swiftyColor)
                .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    State_and_Binding()
}

struct SwiftyControls: View {
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    
    var body: some View {
        VStack {
            ColorPicker("Swifty Color", selection: $swiftyColor)
            Slider(value: $swiftyOpacity, in: 0...1)
                .accentColor(swiftyColor)
        }
    }
}
