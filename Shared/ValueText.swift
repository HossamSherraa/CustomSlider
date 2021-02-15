//
//  ValueText.swift
//  CustomSlider
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI

struct ValuesText : View {
    @State var offsetValue : CGFloat = 0
    let value : Int
    var body: some View {
        Text(value.description)
            .font(.footnote)
            .foregroundColor(.gray)
            .offset(x: offsetValue)
            .background(  GeometryReader(content: { geometry in
                Color.clear.onAppear(perform: {
                    self.offsetValue = -(geometry.size.width / 2 )
                    
                })
            })
            )
    }
}
