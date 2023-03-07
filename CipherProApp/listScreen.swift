//
//  listScreen.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import SwiftUI




struct keyRow: View {
    var key: Key
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(key.name)
            }
        }
    }
}

func counting() -> Int{
    return keyStore.count - 1
}

func addTo() {
    keyStore.append(Key(name: "added", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""))
}

struct listScreen: View {
    
    let on = true
        var body: some View {
            VStack {
                NavigationView {
                    List(keyStore) { item in
                        NavigationLink(destination: ciphermakeScreen(key: item)) {
                            keyRow(key: item)
                        }
                    }
                    .navigationBarTitle("Encryption keys")
                }
                Button() {
                    if on == true {
                        addTo()
                    }
                } label: {
                    Text(keyStore[counting()].name)
                    
                }
            }
    }
}

struct ciphermakeScreen: View {
    var key: Key
    var body: some View {
        VStack {
            Text(key.name)
            Text(keyStore[counting()].name)
        }
    }
}
struct listScreen_Previews: PreviewProvider {
    static var previews: some View {
        listScreen()
    }
}
