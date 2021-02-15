//
//  CustomSliderView.swift
//  CustomSlider
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI

struct CustomSliderBackgroundView: View {
    var body: some View {
        
       
            
            HStack(spacing: 0){
                
                ForEach(0...4 , id : \.self){  index in
                    let currentValue = index * 25
                    if index != 4 {
                        ValueView(value: currentValue, hasLine: true)}
                    else {
                        ValueView.init(value: currentValue , hasLine : false )
                    }
                    
                }
            }
           

                    .anchorPreference(key: CustomeSliderViewPreferenceKey.self, value: Anchor<CGRect>.Source.bounds, transform: { anchor in
                        [CustomeSliderViewPreference.init(rect: anchor)]
                    })
            .padding()
                    
                
                
            
          
            
        
        
        
    }
    
    
    struct ValueView : View {
        let value : Int
        let hasLine : Bool
        var body: some View{
            
            VStack(alignment:.leading, spacing : 4){
                
                ValuesText(value: value)
                HStack( spacing : 0 ){
                Rectangle()
                    .frame(width: 1.5, height: 8, alignment: .center)
                    .foregroundColor(.gray)
                    if hasLine {
                        Rectangle()
                            .frame( height: 2.5)
                    }
                }
            }
        }
    }
}



struct CustomSliderBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSliderBackgroundView()
    }
}


