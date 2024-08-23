//
//  Challenge 2.swift
//  My SwiftUI
//
//  Created by ChenZhen on 23/8/24.
//

import SwiftUI

struct Challenge_2: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
            Text("Sunny")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            Text("H: 61* L: 44*")
                .foregroundColor(Color.white)
                .opacity(0.7)
        }
        .padding()
        .background(
            LinearGradient(colors: [Color.white, Color.blue], startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(12.0)
        
    }
}

#Preview {
    Challenge_2()
}
