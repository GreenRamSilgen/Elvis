//
//  ContentView.swift
//  Elvis
//
//  Created by Kiran Shrestha on 1/6/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Peace"
    @State private var sysImg = "peacesign"
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            VStack{
                Image(systemName: sysImg)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text(message)
                    .foregroundStyle(.purple)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            
            Spacer()
            
            HStack{
                Button("Peace") {
                    message = "Peace"
                    sysImg = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    sysImg = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    sysImg = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
