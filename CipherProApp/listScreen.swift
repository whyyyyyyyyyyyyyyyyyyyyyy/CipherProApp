//
//  listScreen.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import SwiftUI


struct listScreen: View {
    @State public var keyStore = [
        Key(name: "Key 1", a: "A", b: "B", c: "C", d: "D", e: "E", f: "F", g: "G", h: "H", i: "I", j: "J", k: "K", l: "L", m: "M", n: "N", o: "O", p: "P", q: "Q", r: "R", s: "S", t: "T", u: "U", v: "V", w: "W", x: "X", y: "Y", z: "Z"),
        Key(name: "Key 2", a: "A", b: "B", c: "C", d: "D", e: "E", f: "F", g: "G", h: "H", i: "I", j: "J", k: "K", l: "L", m: "M", n: "N", o: "O", p: "P", q: "Q", r: "R", s: "S", t: "T", u: "U", v: "V", w: "W", x: "X", y: "Y", z: "Z")
    ]
        var body: some View {
            NavigationView {
                VStack {
                        List(keyStore) { item in
                            NavigationLink(destination: ciphermakeScreen(key: item)) {
                                Text(item.name)
                            }
                        }
                        .navigationBarTitle("Encryption Keys")
                    Button(action: areSame, label: { Text("Refresh")})
                    Button(action: addNew, label: { Text("New Encryption Key")})
                }
            }
        }
    func addNew() {
        keyStore.append(Key(name: "Key " + String(counting() + 2), a: "A", b: "B", c: "C", d: "D", e: "E", f: "F", g: "G", h: "H", i: "I", j: "J", k: "K", l: "L", m: "M", n: "N", o: "O", p: "P", q: "Q", r: "R", s: "S", t: "T", u: "U", v: "V", w: "W", x: "X", y: "Y", z: "Z"))
    }
    func counting() -> Int{
        return keyStore.count - 1
    }
    func areSame()  {
        var counts = 0
        for item in keyStore {
            if transfer.id == item.id {
                keyStore[counts] = transfer
            }
            else {
                counts = counts + 1
            }
        }
    }
}



struct ciphermakeScreen: View {
    @State var key: Key
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    @State var selection0 = ""
    @State var selection1 = ""
    @State var selection2 = ""
    @State var selection3 = ""
    @State var selection4 = ""
    @State var selection5 = ""
    @State var selection6 = ""
    @State var selection7 = ""
    @State var selection8 = ""
    @State var selection9 = ""
    @State var selection10 = ""
    @State var selection11 = ""
    @State var selection12 = ""
    @State var selection13 = ""
    @State var selection14 = ""
    @State var selection15 = ""
    @State var selection16 = ""
    @State var selection17 = ""
    @State var selection18 = ""
    @State var selection19 = ""
    @State var selection20 = ""
    @State var selection21 = ""
    @State var selection22 = ""
    @State var selection23 = ""
    @State var selection24 = ""
    @State var selection25 = ""
    var body: some View {
        VStack {
            TextField("", text: $key.name)
                .padding(5)
                .border(.black, width: 2.0)
                .padding(15)
            Group {
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("A"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("B"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("C"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("D"))
                    }
                    HStack {
                        Picker("", selection: $selection0) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection1) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection2) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection3) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("E"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("F"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("G"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("H"))
                    }
                    HStack {
                        Picker("", selection: $selection4) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection5) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection6) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection7) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("I"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("J"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("K"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("L"))
                    }
                    HStack {
                        Picker("", selection: $selection8) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection9) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection10) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection11) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("M"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("N"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("O"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("P"))
                    }
                    HStack {
                        Picker("", selection: $selection12) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection13) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection14) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection15) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("Q"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("R"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("S"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("T"))
                    }
                    HStack {
                        Picker("", selection: $selection16) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection17) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection18) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection19) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("U"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("V"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("W"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("X"))
                    }
                    HStack {
                        Picker("", selection: $selection20) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection21) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection22) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection23) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("Y"))
                        RoundedRectangle(cornerRadius: 50).fill(Color.gray).frame(width: 30, height: 17).overlay(Text("Z"))
                    }
                    HStack {
                        Picker("", selection: $selection24) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                        Picker("", selection: $selection25) {
                                        ForEach(alphabet, id: \.self) {
                                            Text($0)
                                        }
                                    }
                        .frame(width: 30, height: 10)
                        .pickerStyle(.menu)
                    }
                }
            }
            .font(.system(size: 11))
            HStack {
                Button(action: starting, label: {Text("Start")})
                Spacer()
                Button(action: save, label: {Text("Save")})
            }
            .padding(.horizontal, 4.0)
        }
    }
    func save() {
        key.a = selection0
        key.b = selection1
        key.c = selection2
        key.d = selection3
        key.e = selection4
        key.f = selection5
        key.g = selection6
        key.h = selection7
        key.i = selection8
        key.j = selection9
        key.k = selection10
        key.l = selection11
        key.m = selection12
        key.n = selection13
        key.o = selection14
        key.p = selection15
        key.q = selection16
        key.r = selection17
        key.s = selection18
        key.t = selection19
        key.u = selection20
        key.v = selection21
        key.w = selection22
        key.x = selection23
        key.y = selection24
        key.z = selection25
        transfer = key
    }
    func starting() {
        selection0 = key.a
        selection1 = key.b
        selection2 = key.c
        selection3 = key.d
        selection4 = key.e
        selection5 = key.f
        selection6 = key.g
        selection7 = key.h
        selection8 = key.i
        selection9 = key.j
        selection10 = key.k
        selection11 = key.l
        selection12 = key.m
        selection13 = key.n
        selection14 = key.o
        selection15 = key.p
        selection16 = key.q
        selection17 = key.r
        selection18 = key.s
        selection20 = key.t
        selection20 = key.u
        selection21 = key.v
        selection22 = key.w
        selection23 = key.x
        selection24 = key.y
        selection25 = key.z
    }
}
struct listScreen_Previews: PreviewProvider {
    static var previews: some View {
        listScreen()
    }
}
