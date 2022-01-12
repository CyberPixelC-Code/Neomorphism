//
//  SwiftUIView.swift
//  
//
//  Created by Josh Steadman on 09/01/2022.
//

import SwiftUI

public struct Switch: View {
    
    @State private var width: CGFloat
    @State private var height: CGFloat
    @State private var tapped: Bool = false
    
    public init (width: CGFloat, height: CGFloat){
        self.width = width
        self.height = height
    }
    
    public var body: some View {
        ZStack{
            NeoFlatOutRect()
                .frame(width: width, height: height)
        }//End of Stack
    }
}
extension Switch{
    
}//End of extension

internal struct Switch_Previews: PreviewProvider {
    internal static var previews: some View {
        Switch(width: 80, height: 40)
    }
}
