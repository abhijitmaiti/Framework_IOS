//
//  SplashView.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/5/24.
//

import SwiftUI

struct SplashView: View {
    @State private var startAnimation = false
    @State private var bowAnimation =  false
    @State private var glowAnimation = false
    @State private var appleLogo = false
    @State private var appleLogoBackgroundGlow = false
    @State private var isFinished = false
    var body: some View {
        if !isFinished{
            ZStack{
                Circle()
                    .trim(from: bowAnimation ?  0 : 0.5, to: 0.5)
                    .stroke(
                        LinearGradient(gradient: Gradient(
                                        
                                        colors: [
                                            Color("white"),
                                            Color("grey3"),
                                            Color("grey2"),
                                            Color("grey1"),
                                            Color("black")

                                            
                                        ]), startPoint: .leading, endPoint: .trailing),
                        style: StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round)
                        
                    )
                    .overlay(
                        Circle()
                            .fill(Color.white.opacity(0.4))
                            .frame(width: 6, height: 6)
                            .overlay(
                                Circle()
                                    .fill(Color.white.opacity( glowAnimation ? 0.2 : 0.1))
                                    .frame(width: 20, height: 20)
                            
                            )
                            .blur(radius: 2.5)
                            
                            .offset(x:-95 )
                            .rotationEffect(.init(degrees: bowAnimation ? -180 : 0))
                            .opacity(startAnimation ? 1: 0)
                            
                    
                    )
                    .frame(width: 190 , height:1200)
                    .rotationEffect(.init(degrees: +195))
                    .offset(x: 5.0)
                
                HStack{
                    Text("🍏")
                        .font(.system(size: 50))
                        .background(
                            ZStack{
                                Circle()
                                    .fill(Color("black").opacity(0.25))
                                    .frame(width: 50, height: 50)
                                    .blur(radius: 2)
                                
                                Circle()
                                    .fill(Color("black").opacity(0.2))
                                    .frame(width: 65, height: 65)
                                    .blur(radius: 2)
                            }
                            .opacity(appleLogoBackgroundGlow ? 1: 0)
                        )
                        .scaleEffect(appleLogo ? 1: 0)
                    
                    Text("Framework")
                        .font(.system(size: 30, design: .monospaced))
                        .fontWeight(.bold)
                        .opacity(bowAnimation ? 1 : 0)

                }
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                        withAnimation(.linear(duration: 1.0)){
                            bowAnimation.toggle()
                            
                        }
                        withAnimation(.linear(duration: 1.0)){
                            glowAnimation.toggle()
                            
                        }
                        DispatchQueue.main.asyncAfter(deadline:.now()+0.5) {
                            withAnimation(.spring()){
                                startAnimation.toggle()
                            }
                            
                        }
                        DispatchQueue.main.asyncAfter(deadline:.now()+0.5) {
                            withAnimation(.spring()){
                                appleLogo.toggle()
                                startAnimation.toggle()
                            }
                            
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline:.now()+0.8) {
                            withAnimation(.linear(duration: 0.5)){
                                appleLogoBackgroundGlow.toggle()
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline:.now()+0.7) {
                                
                                withAnimation(.linear(duration: 0.4)){
                                    appleLogoBackgroundGlow.toggle()
                                }
                                
                            }
                            
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                            withAnimation{
                                isFinished.toggle()
                            }
                        }
                        
                    }
                }
                    
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .preferredColorScheme(.dark)
    }
}
