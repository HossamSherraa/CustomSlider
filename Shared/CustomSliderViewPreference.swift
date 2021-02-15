//
//  CustomSliderViewPreference.swift
//  CustomSlider
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI

struct CustomeSliderViewPreference : Equatable {
    static func == (lhs: CustomeSliderViewPreference, rhs: CustomeSliderViewPreference) -> Bool {
        false 
    }
    
    let rect : Anchor<CGRect>
}

struct CustomeSliderViewPreferenceKey : PreferenceKey {
    static var defaultValue: [CustomeSliderViewPreference] = []
    
    static func reduce(value: inout [CustomeSliderViewPreference], nextValue: () -> [CustomeSliderViewPreference]) {
        value.append(contentsOf: nextValue())
    }
    
    typealias Value = [CustomeSliderViewPreference]
    
    
}



