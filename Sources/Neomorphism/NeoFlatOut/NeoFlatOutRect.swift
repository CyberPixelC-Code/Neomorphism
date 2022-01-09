//
//  NeoFlatOutRect.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

struct Test: ViewModifier{
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color(red: 140/255, green: 140/255, blue: 140/255), radius: 7, x: 5, y: 5)
    }
}

public struct NeoFlatOutRect: View {
    
    @State private var background: Color
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var cornerRadius:CGFloat
    
    public init (){
        self.background = Color(red: 235/255, green: 235/255, blue: 235/255)
        self.darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        self.lightShadow = Color.white
        self.cornerRadius = 20
    }
    
    public init(forground: Color, darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.background = forground
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.cornerRadius = cornerRadius
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(background)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
    
}

internal struct NeoFlatOutRect_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoFlatOutRect()
    }
}
