//
//  NeoCurveInRect.swift
//  Neomorphism
//
//  Created by Josh Steadman on 30/12/2021.
//

import SwiftUI

struct NeoCurveInRect: View {
    
    @State private var background: [Color] = [Color(red: 212/255, green: 212/255, blue: 212/255), Color(red: 250/255, green: 250/255, blue: 250/255)]
    @State private var darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
    @State private var lightShadow = Color.white
    @State private var corner: CGFloat = 20
    //[Color(red: 250/255, green: 250/255, blue: 250/255), Color(red: 212/255, green: 212/255, blue: 212/255)]
    var body: some View {
        RoundedRectangle(cornerRadius: corner)
            .fill(.linearGradient(colors: background, startPoint: .topLeading, endPoint: .bottomTrailing))
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: 5, y: 5)
    }
}
extension NeoCurveInRect{
    func forColor(color: [Color]){
        background = color
    }//End of func
    
    func darkShadow(color: Color){
        darkShadow = color
    }//End of func
    
    func lightShadow(color: Color){
        lightShadow = color
    }
    
    func cornerRadius(cornerRadius: CGFloat){
        corner = cornerRadius
    }//End of func
}

private struct NeoCurveInRect_Previews: PreviewProvider {
    fileprivate static var previews: some View {
        NeoCurveInRect()
    }
}
