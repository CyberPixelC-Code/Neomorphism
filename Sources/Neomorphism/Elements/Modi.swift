//
//  SwiftUIView.swift
//  Neomorphism

import SwiftUI

public struct NeoRectFlatOut: ViewModifier{
    @State private var background: Color
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var corner: CGFloat
    
    public init(){
        self.background = Color(red: 235/255, green: 235/255, blue: 235/255)
        self.darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        self.lightShadow = Color.white
        self.corner = 20
    }//End of default init
    
    public init(background: Color, darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.background = background
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.corner = cornerRadius
    }//End of custom init
    
    public func body(content: Content) -> some View {
        content
            .background(background)
            .cornerRadius(corner)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of func
    
}//End of struct

public struct NeoRectFlatIn: ViewModifier{
    @State private var backgrond: Color
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var corner: CGFloat
    
    public init(){
        self.backgrond = Color(red: 235/255, green: 235/255, blue: 235/255)
        self.darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        self.lightShadow = Color.white
        self.corner = 20
    }//End of default init
    
    public init(background: Color, darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.backgrond = background
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.corner = cornerRadius
    }//End of custom init
    
    public func body(content: Content) -> some View{
        content
            .background(backgrond)
            .cornerRadius(corner)
            .overlay(
                RoundedRectangle(cornerRadius: corner)
                    .stroke(darkShadow, lineWidth: 5)
                    .offset(x: 5, y: 5)
                    .blur(radius: 4)
                    .mask(RoundedRectangle(cornerRadius: corner))
            )//End of overlay
            .overlay(
                RoundedRectangle(cornerRadius: corner)
                    .stroke(lightShadow, lineWidth: 5)
                    .offset(x: -5, y: -5)
                    .blur(radius: 4)
                    .mask(RoundedRectangle(cornerRadius: corner))
            )//End of overlay
    }//End of func
    
}//End of struct

public struct NeoRectCurveOut: ViewModifier{
    @State private var backgrond: [Color]
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var corner: CGFloat
    
    public init(){
        self.backgrond = [Color(red: 249/255, green: 250/255, blue: 250/255), Color(red: 212/255, green: 212/255, blue: 212/255)]
        self.darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        self.lightShadow = Color.white
        self.corner = 20
    }//End of default init
    
    public init(background: [Color], darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.backgrond = background
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.corner = cornerRadius
    }//End of custom init
    
    public func body(content: Content) -> some View {
        content
            .background(LinearGradient(colors: backgrond, startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(corner)
            .shadow(color: darkShadow, radius: 7, x: 5, y: 5)
            .shadow(color: lightShadow, radius: 7, x: -5, y: -5)
    }//End of func
    
}//End of struct

public struct NeoRectCurveIn: ViewModifier{
    @State private var backgrond: [Color]
    @State private var darkShadow: Color
    @State private var lightShadow: Color
    @State private var corner: CGFloat
    
    public init(){
        self.backgrond = [Color(red: 250/255, green: 250/255, blue: 250/255), Color(red: 212/255, green: 212/255, blue: 212/255)]
        self.darkShadow = Color(red: 140/255, green: 140/255, blue: 140/255)
        self.lightShadow = Color.white
        self.corner = 20
    }//End of default init
    
    public init(background: [Color], darkShadow: Color, lightShadow: Color, cornerRadius: CGFloat){
        self.backgrond = background
        self.darkShadow = darkShadow
        self.lightShadow = lightShadow
        self.corner = cornerRadius
    }//End of custom init
    
    public func body(content: Content) -> some View {
        content
            .background(LinearGradient(colors: backgrond, startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(corner)
            .overlay(
                RoundedRectangle(cornerRadius: corner)
                    .stroke(darkShadow, lineWidth: 5)
                    .offset(x: 5, y: 5)
                    .blur(radius: 4)
                    .mask(RoundedRectangle(cornerRadius: corner))
            )//End of overlay
            .overlay(
                RoundedRectangle(cornerRadius: corner)
                    .stroke(lightShadow, lineWidth: 5)
                    .offset(x: -5, y: -5)
                    .blur(radius: 4)
                    .mask(RoundedRectangle(cornerRadius: corner))
            )//End of overlay
            
    }//End of func
    
}//End of struct
