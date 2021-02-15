//
//  ContentView.swift
//  CustomSlider
//
//  Created by Hossam on 27/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var currentPrecentageValue : Int = 0
    @State var headColor : HeadColor = .red
    var body: some View {
        VStack{
        ZStack{
            Color.init(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
                .ignoresSafeArea()
            VStack{
                
                HStack{
                    Color.yellow
                        .frame(width: 100, height: 100, alignment: .center)
                        .onTapGesture {
                            headColor = .yellow
                        }
                    Color.red
                        .frame(width: 100, height: 100, alignment: .center)
                        .onTapGesture {
                            headColor = .red
                        }
                    Color.blue
                        .frame(width: 100, height: 100, alignment: .center)
                        .onTapGesture {
                            headColor = .blue
                        }
                }
                CustomSlider( headColor:$headColor, currentPrecentageValue: $currentPrecentageValue)
                  
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
