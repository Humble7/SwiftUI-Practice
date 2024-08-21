//
//  ContentView.swift
//  My SwiftUI
//
//  Created by ChenZhen on 20/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Image(systemName: "swift").resizable()
                
                .frame(width: 100.0, height: 100.0)
                .background(Color.orange).padding([.leading, .bottom, .trailing], 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
