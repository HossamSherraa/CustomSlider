//
//  SliderHeadShape.swift
//  CustomSlider
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI

struct SliderHeadShape: View {
    @Binding var precentageValue : Int
    let headColor : HeadColor
    var body: some View {
        VStack(content: {
            Image(headColor.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                //Step1 change size
                .frame(width: 80, height: 80, alignment: .center)
                .overlay(
                    Text(precentageValue.description)
                        //Change Font Size
                        .font(.system(size: 13))
                        .bold()
                        .foregroundColor(.white)
                        //Step2 Change text offset
                        .offset (y: -15)
                )
            
        })
    }
    
   
}


