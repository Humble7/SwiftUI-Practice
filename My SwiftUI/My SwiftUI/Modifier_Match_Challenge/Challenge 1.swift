//
//  Challenge 1.swift
//  My SwiftUI
//
//  Created by ChenZhen on 23/8/24.
//

import SwiftUI

struct Challenge_1: View {
    var body: some View {
        Image("monster")
            .resizable()
            .scaledToFit()
            .shadow(radius: 15)

            .border(Color.green, width: 5)
            .padding()
    }
}

#Preview {
    Challenge_1()
}
