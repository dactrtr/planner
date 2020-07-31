//
//  buttons.swift
//  planner
//
//  Created by Dactrtr on 25-07-20.
//

import SwiftUI
func haptic(){
    UINotificationFeedbackGenerator().notificationOccurred(.success) 
}
struct lekanMenu: View {
    @State var isPress =  false
    @State var selected = 0
    var body: some View {
        VStack {
            HStack(spacing: 32.0) {
                
                Button(action: {
                    self.isPress.toggle()
                    DispatchQueue.main.asyncAfter(deadline:.now()+0.2) {
                        self.isPress.toggle()
                        self.selected = 1
                        haptic()
                    }
                }) {
                    LinearGradient(gradient: Gradient(colors: self.selected == 1 ? [Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]:[Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                        .mask(
                            Image(systemName: self.selected == 1 ? "house.fill" : "house")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                        .frame(width: 36, height: 36)
                        .scaleEffect(self.isPress ? 1.2:1)
                        .shadow(color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)).opacity(self.selected == 1 ? 0.5:0), radius: 3, x: 0, y: 3)
                        .animation(Animation.spring())
                }
                
                Button(action: {
                    self.isPress.toggle()
                    DispatchQueue.main.asyncAfter(deadline:.now()+0.2) {
                        self.isPress.toggle()
                        self.selected = 2
                        haptic()
                    }
                }) {
                    LinearGradient(gradient: Gradient(colors: self.selected == 2 ? [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]:[Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                        .mask(
                            Image(systemName: self.selected == 2 ? "gamecontroller.fill" : "gamecontroller")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                        .frame(width: 36, height: 36)
                        .scaleEffect(self.isPress ? 1.2:1)
                        .shadow(color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(self.selected == 2 ? 0.5:0), radius: 3, x: 0, y: 3)
                        .animation(Animation.spring())
                }
                
                Button(action: {
                    self.isPress.toggle()
                    DispatchQueue.main.asyncAfter(deadline:.now()+0.2) {
                        self.isPress.toggle()
                        self.selected = 3
                        haptic()
                    }
                }) {
                    LinearGradient(gradient: Gradient(colors: self.selected == 3 ? [Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)), Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]:[Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                        .mask(
                            Image(systemName: self.selected == 3 ? "message.fill" : "message")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                        .frame(width: 36, height: 36)
                        .scaleEffect(self.isPress ? 1.2:1)
                        .shadow(color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)).opacity(self.selected == 3 ? 0.5:0), radius: 3, x: 0, y: 3)
                        .animation(Animation.spring())
                }
                
                Button(action: {
                    self.isPress.toggle()
                    DispatchQueue.main.asyncAfter(deadline:.now()+0.2) {
                        self.isPress.toggle()
                        self.selected = 4
                        haptic()
                    }
                }) {
                    LinearGradient(gradient: Gradient(colors: self.selected == 4 ? [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))]:[Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                        .mask(
                            Image(systemName: self.selected == 4 ? "tag.fill" : "tag")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        )
                        .frame(width: 36, height: 36)
                        .scaleEffect(self.isPress ? 1.2:1)
                        .shadow(color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)).opacity(self.selected == 4 ? 0.5:0), radius: 3, x: 0, y: 3)
                        .animation(Animation.spring())
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 16)
            .background(Color("bg"))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.black.opacity(0.15), radius: 12, x: 0, y: 8)
            .offset(y: self.isPress ? 6 : 0)
            .scaleEffect(self.isPress ? 1.3 : 1)
            .animation(Animation.spring().delay(0.01))
        }
        .padding(.bottom, 32)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        lekanMenu()
            
    }
}
