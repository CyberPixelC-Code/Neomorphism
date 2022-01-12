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
        self.background = Color(red: 235/255, green: 235/255, blue: 235/255)
        self.darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        self.lightShadow = Color.white
        self.cornerRadius = 20
    }//End of default init
    
    public init(forground: Color, darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.background = forground
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.cornerRadius = cornerRadius
    }//End of custom init
    
    public var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(background)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
    
}//End of view

internal struct NeoFlatOutRect_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoFlatOutRect()
    }
}
