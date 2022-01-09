//
//  NeoFlatOutRect.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

public struct NeoFlatOutRect: View {
    
    @State private var background: Color
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var cornerRadius:CGFloat
    
    public init (){
        background = Color(red: 235/255, green: 235/255, blue: 235/255)
        darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        lightShadow = Color.white
        cornerRadius = 20
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(background)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
}
extension NeoFlatOutRect {
    public func forColor(color: Color){
        background = color
    }//End of func
    
    public func lightShadow(color: Color){
        lightShadow = color
    }//End of func
    
    public func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    public func cornerRadius(corner: CGFloat){
        cornerRadius = corner
    }//End of func
    
}//End of extension

internal struct NeoFlatOutRect_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoFlatOutRect()
    }
}
