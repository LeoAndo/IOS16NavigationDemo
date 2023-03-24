//
//  ContentView.swift
//  IOS16NavigationDemo
//
//  Created by LeoAndo on 2023/03/20.
//

import SwiftUI

struct ContentView: View {
    // list data.
    var persons:[Person] = [Person(1,"ando","10"),Person(2,"uchida","20"), Person(3,"endo","30"),Person(4,"kanda","40")]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: true) {
                    LazyVStack(spacing: 0) {
                        ForEach(persons) { person in
                            // セル１行分のレイアウト - START
                            NavigationLink(value: person) {
                                VStack(alignment: .leading) {
                                    Text(person.name)
                                    Divider()
                                }
                                .frame(maxWidth: .infinity)
                                .padding([.leading, .trailing], 8)
                            }
                            // セル１行分のレイアウト - END
                        }
                    }.navigationDestination(for: Person.self) { person in
                        DetailScreen(person: person)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
