//
//  LayoutWithStack.swift
//  My SwiftUI
//
//  Created by ChenZhen on 26/8/24.
//

import SwiftUI

struct LayoutWithStack: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Thumbnail()

            VStack {
                MixDescription()
                Buttons()
            }
            
        }
        .padding()
        .frame(minHeight: 150, maxHeight: 250)
    }

}

#Preview {
    LayoutWithStack()
}

struct Thumbnail: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.orange)
                    .aspectRatio(1, contentMode: .fit)
                    .shadow(radius: 10)
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
            }
            VStack(alignment: .leading) {
                Text("Meow!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("Mix")
                    .font(.largeTitle)
                Spacer()
            }.foregroundColor(.white)
                .padding()
        })
    }
}

struct ButtonLabel: View {
    
    let title: String
    let systemImage: String
    
    var body: some View {
        HStack {
            Spacer()
            Label(title, systemImage: systemImage)
            Spacer()
        }
        .padding(.vertical)
        .background(Color.gray.opacity(0.15))
        .cornerRadius(12)
    }
}

struct Buttons: View {
    var body: some View {
        HStack{
            Button(action: { print("Play!") }, label: {
                ButtonLabel(title: "Play", systemImage: "play.fill")
            })
            
            Button(action: { print("Shuffle!") }, label: {
                ButtonLabel(title: "Shuffle", systemImage: "shuffle")
            })
        }
    }
}

struct MixDescription: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            VStack(alignment: .leading, content: {
                Text("Meow! Mix")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Apple Music for Luna")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.accentColor)
                Text("Updated caturday")
                    .font(.system(.body).smallCaps())
                
                Text("Whether you're a kitten or an old-timer, get meowing with this purrsonalized mix of music to meow to!")
                
                
            })
        }
    }
}
