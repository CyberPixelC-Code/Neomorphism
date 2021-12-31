//
//  NeoFlatOutRect.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

internal struct NeoFlatOutRect: View {
    
    @State private var background = Color(red: 235/255, green: 235/255, blue: 235/255)
    @State private var darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
    @State private var lightShadow = Color.white
    @State private var cornerRadius:CGFloat = 20
    
    internal var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(background)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
}
extension NeoFlatOutRect {
    func forColor(color: Color){
        background = color
    }//End of func
    
    func lightShadow(color: Color){
        lightShadow = color
    }//End of func
    
    func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    func cornerRadius(corner: CGFloat){
        cornerRadius = corner
    }//End of func
    
}//End of extension

private struct NeoFlatOutRect_Previews: PreviewProvider {
    fileprivate static var previews: some View {
        NeoFlatOutRect()
    }
}
