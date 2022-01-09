//
//  NeoCurveInRect.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

struct NeoCurveInRect: View {
    
    @State private var background: [Color]
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var corner: CGFloat
    //[Color(red: 250/255, green: 250/255, blue: 250/255), Color(red: 212/255, green: 212/255, blue: 212/255)]
    
    public init (){
        background = [Color(red: 212/255, green: 212/255, blue: 212/255), Color(red: 250/255, green: 250/255, blue: 250/255)]
        darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        lightShadow = Color.white
        corner = 20
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: corner)
            .fill(.linearGradient(colors: background, startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: 5, y: 5)
    }
}
extension NeoCurveInRect{
    public func forColor(color: [Color]){
        background = color
    }//End of func
    
    public func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    public func lightShadow(color: Color){
        lightShadow = color
    }
    
    public func cornerRadius(cornerRadius: CGFloat){
        corner = cornerRadius
    }//End of func
}

internal struct NeoCurveInRect_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoCurveInRect()
    }
}
