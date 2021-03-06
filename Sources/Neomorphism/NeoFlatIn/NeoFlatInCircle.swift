//
//  NeoFlatInCircle.swift
//  Neomorphism

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
    
    public init(forground: Color, darkShadow: Color, lightShadow: Color){
        self.background = forground
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
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

internal struct NeoFlatInCircle_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoFlatInCircle()
    }
}
