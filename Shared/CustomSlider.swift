//
//  ContentView.swift
//  Shared
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI


struct CustomSlider: View {
    @State var sliderWidth : CGFloat = 0
    @State var sliderHeadOffset : CGFloat = 0
    @Binding var headColor : HeadColor
    @State var precentageValue : Int = 0 {
        didSet{
            self.currentPrecentageValue = precentageValue
        }
    }
    @Binding var currentPrecentageValue : Int 
    var body: some View {
        GeometryReader.init(content: { geometry in
            ZStack{
                Color.clear
                    .ignoresSafeArea()
                
                CustomSliderBackgroundView()
                    .frame( height: 100)
                    .overlay(
                       
                           
                        SliderHeadShape(precentageValue : $precentageValue, headColor: headColor)
                           //Step4 Y value 
                            .offset(x: sliderHeadOffset - 23 , y: 5)
                            
                        
        
                        , alignment: .topLeading)
                
                
                
            }
            
        
     
        .gesture(DragGesture()
                    .onChanged({ (vale) in
                        sliderHeadOffset = min(max(0, vale.location.x), sliderWidth)
                      let precetange = (sliderHeadOffset / sliderWidth) * 100
                        self.precentageValue = Int(precetange)
                    }))
        
        .animation(.interactiveSpring())
        .onPreferenceChange(CustomeSliderViewPreferenceKey.self, perform: { value in
            if let _ = value.first {
            let rect = geometry[value.first!.rect]
                self.sliderWidth = rect.width - 20
               
            }
        })
    }).frame( height: 150, alignment: .center)
        .padding()
    }
}



