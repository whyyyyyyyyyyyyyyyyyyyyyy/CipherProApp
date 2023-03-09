//
//  ContentView.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: baseScreen()) {
                    RoundedRectangle(cornerRadius: 25, style: .continuous).frame(width: 200, height: 150).foregroundColor(.blue).overlay(Text("Open")
                        .foregroundColor(Color.white))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
