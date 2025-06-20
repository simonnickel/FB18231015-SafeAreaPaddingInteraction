//
//  ContentView.swift
//  SafeAreaPaddingInteraction
//
//  Created by Simon Nickel on 20.06.25.
//

import SwiftUI

struct ContentView: View {
    
    let inset: CGFloat = 150
    var body: some View {
        ScrollView {
            HStack {
                row
                row
                row
                row
            }
            .frame(maxWidth: .infinity)
            .ignoresSafeArea()
        }
        .background {
            Color.green
        }
        .safeAreaPadding(.vertical, inset)
        .safeAreaPadding(.horizontal, inset)
    }
    
    private var row: some View {
        VStack {
            ButtonView(title: "Button 1")
            ButtonView(title: "Button 2")
            ButtonView(title: "Button 3")
            ButtonView(title: "Button 4")
            ButtonView(title: "Button 5")
            ButtonView(title: "Button 6")
            ButtonView(title: "Button 7")
            ButtonView(title: "Button 8")
            ButtonView(title: "Button 9")
            ButtonView(title: "Button 1")
  
        }
    }
}

struct WorkingContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    ButtonView(title: "Button 1")
                    ButtonView(title: "Button 2")
                    ButtonView(title: "Button 3")
                    ButtonView(title: "Button 4")
                }
                .frame(maxWidth: .infinity)
                .ignoresSafeArea()
            }
            .ignoresSafeArea(edges: .horizontal)
        }
        .background(.yellow)
        .safeAreaPadding(.horizontal, 150)
    }
}

struct ButtonView: View {
    
    @State private var isOrange: Bool = true
    
    let title: String
    
    var body: some View {
        Button {
            isOrange.toggle()
        } label: {
            Text(title)
        }
        .padding()
        .background(isOrange ? .orange : .red)
    }
}

#Preview {
    ContentView()
}
