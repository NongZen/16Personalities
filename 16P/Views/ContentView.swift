//
//  ContentView.swift
//  16P
//
//  Created by admin on 12/3/2567 BE.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View{
        Home()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
