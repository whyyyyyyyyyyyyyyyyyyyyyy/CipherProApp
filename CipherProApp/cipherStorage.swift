//
//  cipherStorage.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import Foundation

public struct Key: Identifiable {
    public var id = UUID()
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


public var keyStore = [
    Key(name: "hey", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
    Key(name: "Unnamed 2", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
    Key(name: "hilykutfjy", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
    Key(name: "wooorld", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: "")
]


//struct keyRow: View {
//    var uyt = Key.self
//    var body: some View {
//        Text(uyt.name)
//    }
//}