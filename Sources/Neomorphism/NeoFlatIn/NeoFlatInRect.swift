//
//  NeoFlatInRect.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

public struct NeoFlatInRect: View {
    
    @State private var background: Color
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var corner:CGFloat
    
    public init (){
        background = Color(red: 235/255, green: 235/255, blue: 235/255)
        darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        lightShadow = Color.white
        corner = 20
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: corner)
            .fill(background)
            .overlay(
                RoundedRectangle(cornerRadius: corner)
                    .stroke(lightShadow, lineWidth: 5)
                    .offset(x: -5, y: -5)
                    .blur(radius: 4)
                    .mask(RoundedRectangle(cornerRadius: corner))
            )//End of overlay
            .overlay(
                RoundedRectangle(cornerRadius: corner)
                    .stroke(darkShadow, lineWidth: 5)
                    .offset(x: 5, y: 5)
                    .blur(radius: 4)
                    .mask(RoundedRectangle(cornerRadius: corner))
            )//End of overlay
    }
}
extension NeoFlatInRect{
    func forColor(color: Color){
        background = color
    }//End of func
    
    func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    func lightShadow(color: Color){
        lightShadow = color
    }
    
    func cornerRadius(cornerRadius: CGFloat){
        corner = cornerRadius
    }//End of func
    
}//Emd pf extension

internal struct NeoFlatInRect_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoFlatInRect()
    }
}
