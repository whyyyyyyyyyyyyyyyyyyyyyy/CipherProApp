//
//  listScreen.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import SwiftUI

struct keys: Identifiable {
    var id = UUID()
    var name: String
    var a: String
    var b: String
    var c: String
    var d: String
    var e: String
    var f: String
    var g: String
    var h: String
    var i: String
    var j: String
    var k: String
    var l: String
    var m: String
    var n: String
    var o: String
    var p: String
    var q: String
    var r: String
    var s: String
    var t: String
    var u: String
    var v: String
    var w: String
    var x: String
    var y: String
    var z: String
}

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


struct listScreen: View {
    let keyStore = [
        Key(name: "hey", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
        Key(name: "Unnamed 2", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: "")
        ]
        
        var body: some View {
            NavigationView {
                List(keyStore) { item in
                    NavigationLink(destination: ciphermakeScreen(key: item)) {
                        keyRow(key: item)
                    }
                }
                .navigationBarTitle("Encryption keys")
            }
    }
}

struct ciphermakeScreen: View {
    var key: Key
    var body: some View {
        Text(key.name)
    }
}
struct listScreen_Previews: PreviewProvider {
    static var previews: some View {
        listScreen()
    }
}
