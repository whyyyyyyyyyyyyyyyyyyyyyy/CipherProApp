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



struct listScreen: View {
    @State public var keyStore = [
        Key(name: "Key 1", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
        Key(name: "Key 2", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
        Key(name: "Key 3", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
        Key(name: "Key 4", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: "")
    ]
        var body: some View {
            
            NavigationView {
                VStack {
                    List(keyStore) { item in
                        NavigationLink(destination: ciphermakeScreen(key: item)) {
                            keyRow(key: item)
                        }
                    }
                    .navigationBarTitle("Encryption keys")
                    NavigationLink(destination: ciphermakeScreen(key: addNew())) {
                        Text("New Encryption Key")
                    }
            }
                
//                Button(action: addTo, label: { Text("New Encryption Key")})
//            }
            }
        }
    func addNew() -> Key {
        let newKey = Key(name: "added", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: "")
        keyStore.append(Key(name: "added", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""))
        return newKey
    }
    func counting() -> Int{
        return keyStore.count - 1
    }
}



struct ciphermakeScreen: View {
    var key: Key
    var body: some View {
        VStack {
            Text(key.name)
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("A"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("B"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("C"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("D"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.a))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.b))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.c))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.d))
                }
            }
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("E"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("F"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("G"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("H"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.e))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.f))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.g))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.h))
                }
            }
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("I"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("J"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("K"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("L"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.i))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.j))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.k))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.l))
                }
            }
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("M"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("N"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("O"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("P"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.m))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.n))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.o))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.p))
                }
            }
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("Q"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("R"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("S"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("T"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.q))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.r))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.s))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.t))
                }
            }
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("U"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("V"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("W"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("X"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.u))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.v))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.w))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.x))
                }
            }
            Group {
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("Y"))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("Z"))
                }
                HStack {
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.y))
                    RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.z))
                }
            }
        }
    }
}
struct listScreen_Previews: PreviewProvider {
    static var previews: some View {
        listScreen()
    }
}
