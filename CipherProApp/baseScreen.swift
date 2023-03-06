//
//  baseScreen.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import SwiftUI

struct baseScreen: View {
    var body: some View {
        TabView {
            houseScreen()
                .tabItem {
                    Label("home", systemImage: "house")
                }
            listScreen()
                .tabItem {
                    Label("keys", systemImage: "key")
                }
        }
            .navigationBarBackButtonHidden(true)
    }
}

struct houseScreen: View {
    var body: some View {
        VStack {
            VStack {
                Text("ENCODED")
                Text("TEXT")
            }
            .font(.system(size: 56.0))
            Spacer()
            Rectangle()
                .frame(width: 322, height: 2)
        }
    }
}

struct baseScreen_Previews: PreviewProvider {
    static var previews: some View {
        baseScreen()
    }
}
