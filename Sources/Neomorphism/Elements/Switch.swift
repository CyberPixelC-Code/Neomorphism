//
//  SwiftUIView.swift
//  
//
//  Created by Josh Steadman on 09/01/2022.
//

import SwiftUI

private struct Switch: View {
    fileprivate var body: some View {
        ZStack{
            NeoFlatOutRect()
                .frame(width: 80, height: 40)
        }//End of Stack
    }
}
extension Switch{
    
}//End of extension

internal struct Switch_Previews: PreviewProvider {
    internal static var previews: some View {
        Switch()
    }
}
