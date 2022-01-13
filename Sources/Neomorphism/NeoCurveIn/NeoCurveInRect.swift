//
//  NeoCurveInRect.swift
//  Neomorphism

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
    
    public init(forground: [Color], darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.background = forground
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.corner = cornerRadius
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: corner)
            .fill(.linearGradient(colors: background, startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: 5, y: 5)
    }
}

internal struct NeoCurveInRect_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoCurveInRect()
    }
}
