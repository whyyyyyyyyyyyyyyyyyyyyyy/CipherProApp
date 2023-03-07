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

func letterCalc(array: Key) -> [String] {
    var letterStore: [String]
    letterStore.append(array.a)
    letterStore.append(array.b)
    letterStore.append(array.c)
    letterStore.append(array.d)
    letterStore.append(array.e)
    letterStore.append(array.f)
    letterStore.append(array.g)
    letterStore.append(array.h)
    letterStore.append(array.i)
    letterStore.append(array.j)
    letterStore.append(array.k)
    letterStore.append(array.l)
    letterStore.append(array.m)
    letterStore.append(array.n)
    letterStore.append(array.o)
    letterStore.append(array.p)
    letterStore.append(array.q)
    letterStore.append(array.r)
    letterStore.append(array.s)
    letterStore.append(array.t)
    letterStore.append(array.u)
    letterStore.append(array.v)
    letterStore.append(array.w)
    letterStore.append(array.x)
    letterStore.append(array.y)
    letterStore.append(array.z)
    return letterStore
}

struct ciphermakeScreen: View {
    var key: Key
    var storage = letterCalc(array: key)
    var body: some View {
        VStack {
            List(storage) { stuff in
                Text("hye")
            }
        }
//        VStack {
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("A"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("B"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("C"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("D"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.a))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.b))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.c))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.d))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("E"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("F"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("G"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("H"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.e))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.f))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.g))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.h))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("I"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("J"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("K"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("L"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.i))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.j))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.k))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.l))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("M"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("N"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("O"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("P"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.m))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.n))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.o))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.p))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("Q"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("R"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("S"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("T"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.q))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.r))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.s))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.t))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("U"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("V"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("W"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("X"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.u))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.v))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.w))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.x))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("Y"))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text("Z"))
//            }
//            HStack {
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.y))
//                RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 19, height: 19).overlay(Text(key.z))
//            }
//        }
    }
}
struct listScreen_Previews: PreviewProvider {
    static var previews: some View {
        listScreen()
    }
}
