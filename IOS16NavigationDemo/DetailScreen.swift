//
//  DetailScreen.swift
//  IOS16NavigationDemo
//
//  Created by LeoAndo on 2023/03/24.
//

import SwiftUI

struct DetailScreen: View {
    let person: Person
    var body: some View {
        VStack {
            Text("name: \(person.name)")
            Text("age: \(person.age)")
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(person: Person(1, "ando","10"))
    }
}
