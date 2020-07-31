//
//  TabBarView.swift
//  planner
//
//  Created by Dactrtr on 22-07-20.
//

import SwiftUI

struct TabBarView: View {
    
//    @State var actived = false
    @State var isPressed = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            HStack(spacing: 24.0) {
                buttonIcon(icon: "house", colors:[Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))],isPressed: $isPressed)
                buttonIcon(icon: "gamecontroller", colors:[Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))],isPressed: $isPressed)
                buttonIcon(icon: "message", colors:[Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))],isPressed: $isPressed)
                buttonIcon(icon: "tag", colors:[Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)),Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))],isPressed: $isPressed)
            }
            
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 16)
            .background(Color("bg"))
            .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
            .shadow(color: Color.black.opacity(0.15), radius: 12, x: 0, y: 8)
            .offset(y: self.isPressed ? 6 : 0)
            .scaleEffect(self.isPressed ? 1.3 : 1)
            .animation(Animation.spring().delay(0.01))
            
        }
        .padding(.bottom, 32)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .preferredColorScheme(.light)
            
    }
}

struct buttonIcon: View {
    var icon: String
    var colors : [Color]
    @State var isActive = true
    @Binding var isPressed : Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: self.isActive ? [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))] : colors), startPoint: .bottom, endPoint: .top)
            .mask(
                Image(systemName: self.isActive ? icon : icon+".fill")
                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                    .frame(alignment: .center)
            )
            .onTapGesture {
                self.isPressed.toggle()
                DispatchQueue.main.asyncAfter(deadline:.now()+0.2) {
                    self.isPressed.toggle()
                    self.isActive.toggle()
                }
            }
            .frame(width: 36, height: 36)
            .scaleEffect(self.isPressed ? 1.2 : 1)
            .shadow(color: colors[1].opacity( self.isActive ? 0 : 0.5), radius: 3, x: 0, y: 3)
            .animation(Animation.spring())
    }
}
