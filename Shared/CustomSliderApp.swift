//
//  CustomSliderApp.swift
//  Shared
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI

@main
struct CustomSliderApp: App {
    var body: some Scene {
        WindowGroup {
            CustomSlider( headColor: .constant(.red), currentPrecentageValue: .constant(10))
        }
    }
}
