//
//  NeoCurvOutCircle.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

public struct NeoCurvOutCircle: View {
    
    @State private var background: [Color]
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    
    public init (){
        background = [Color(red: 250/255, green: 250/255, blue: 250/255), Color(red: 212/255, green: 212/255, blue: 212/255)]
        darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        lightShadow = Color.white
    }
    
    public var body: some View {
        Circle()
            .fill(.linearGradient(colors: background, startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
}
extension NeoCurvOutCircle{
    public func forColor(color: [Color]){
        background = color
    }//End of func
    
    public func lightShadow(color: Color){
        lightShadow = color
    }//End of func
    
    public func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
}//End of extension

internal struct NeoCurvOutCircle_Previews: PreviewProvider {
    internal static var previews: some View {
        NeoCurvOutCircle()
    }
}
