//
//  NeoCurveInCircle.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

struct NeoCurveInCircle: View {
    
    @State private var background: [Color] = [Color(red: 212/255, green: 212/255, blue: 212/255), Color(red: 250/255, green: 250/255, blue: 250/255)]
    @State private var darkShadow: Color = Color(red: 140/255, green: 140/255, blue: 140/255)
    @State private var lightShadow: Color = Color.white
    
    var body: some View {
        Circle()
            .fill(.linearGradient(colors: background, startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of view
}
extension NeoCurveInCircle{
    func forColor(color: [Color]){
        background = color
    }//End of func
    
    func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    func lightShadow(color: Color){
        lightShadow = color
    }//End of func
    
}//End of extension

private struct NeoCurveInCircle_Previews: PreviewProvider {
    fileprivate static var previews: some View {
        NeoCurveInCircle()
    }
}
