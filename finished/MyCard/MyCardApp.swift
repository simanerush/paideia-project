//
//  MyCardApp.swift
//  MyCard
//
//  Created by Serafima Nerush on 1/11/22.
//

import SwiftUI

@main
struct MyCardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    for family in UIFont.familyNames.sorted() {
                        let names = UIFont.fontNames(forFamilyName: family)
                        print("Family: \(family) Font names: \(names)")
                    }
                }
        }
    }
}
