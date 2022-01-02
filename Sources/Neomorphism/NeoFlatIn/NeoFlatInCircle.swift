//
//  NeoFlatInCircle.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

public struct NeoFlatInCircle: View {
    
    @State private var background: Color
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    
    public init (){
        background = Color(red: 235/255, green: 235/255, blue: 235/255)
        darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        lightShadow = Color.white
    }
    
    public var body: some View {
        Circle()
            .fill(background)
            .overlay(
                Circle()
                    .stroke(lightShadow, lineWidth: 5)
                    .offset(x: -5, y: -5)
                    .blur(radius: 4)
                    .mask(Circle())
            )//End of overlay
            .overlay(
                Circle()
                    .stroke(darkShadow, lineWidth: 5)
                    .offset(x: 5, y: 5)
                    .blur(radius: 4)
                    .mask(Circle())
            )//End of overlay
    }
}
extension NeoFlatInCircle{
    func forColor(color: Color){
        background = color
    }//End of func
    
    func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    func lightShadow(color: Color){
        lightShadow = color
    }
}

private struct NeoFlatInCircle_Previews: PreviewProvider {
    fileprivate static var previews: some View {
        NeoFlatInCircle()
    }
}
