//
//  listScreen.swift
//  CipherProApp
//
//  Created by William Milne on 6/3/2023.
//

import SwiftUI


struct listScreen: View {
    @State public var keyStore = [
        Key(name: "Key 1", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""),
        Key(name: "Key 2", a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: "")
    ]
        var body: some View {
            NavigationView {
                VStack {
                        List(keyStore) { item in
                            NavigationLink(destination: ciphermakeScreen(key: item)) {
                                Text(item.name)
                            }
                        }
                        .navigationBarTitle("Encryption keys")
                    Button(action: addNew, label: { Text("New Encryption Key")})
                }
                
                
            }
        }
    func addNew() {
        keyStore.append(Key(name: "Key " + String(counting() + 2), a: "", b: "", c: "", d: "", e: "", f: "", g: "", h: "", i: "", j: "", k: "", l: "", m: "", n: "", o: "", p: "", q: "", r: "", s: "", t: "", u: "", v: "", w: "", x: "", y: "", z: ""))
    }
    func counting() -> Int{
        return keyStore.count - 1
    }
}



struct ciphermakeScreen: View {
    @State var key: Key
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    @State private var selection0 = ""
    @State private var selection1 = ""
    @State private var selection2 = ""
    @State private var selection3 = ""
    @State private var selection4 = ""
    @State private var selection5 = ""
    @State private var selection6 = ""
    @State private var selection7 = ""
    @State private var selection8 = ""
    @State private var selection9 = ""
    @State private var selection10 = ""
    @State private var selection11 = ""
    @State private var selection12 = ""
    @State private var selection13 = ""
    @State private var selection14 = ""
    @State private var selection15 = ""
    @State private var selection16 = ""
    @State private var selection17 = ""
    @State private var selection18 = ""
    @State private var selection19 = ""
    @State private var selection20 = ""
    @State private var selection21 = ""
    @State private var selection22 = ""
    @State private var selection23 = ""
    @State private var selection24 = ""
    @State private var selection25 = ""
    @State private var selection26 = ""
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
        }
    }
}
struct listScreen_Previews: PreviewProvider {
    static var previews: some View {
        listScreen()
    }
}
