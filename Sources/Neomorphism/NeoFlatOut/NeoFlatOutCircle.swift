//
//  NeoFlatOutCircle.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

struct NeoFlatOutCircle: View {
    
    @State private var background = Color(red: 235/255, green: 235/255, blue: 235/255)
    @State private var darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
    @State private var lightShadow = Color.white
    
    var body: some View {
        Circle()
            .fill(background)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
}
extension NeoFlatOutCircle{
    func forColor(color: Color){
        background = color
    }//End of func
    
    func darkShadow(color: Color){
        darkShadow = color
    }//End of fun
    
    func lightShadow(color: Color){
        lightShadow = color
    }//End of func
    
}//End of extension

private struct NeoFlatOutCircle_Previews: PreviewProvider {
    fileprivate static var previews: some View {
        NeoFlatOutCircle()
    }
}
