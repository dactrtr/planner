//
//  swiftuibadge.swift
//  planner
//
//  Created by Dactrtr on 25-07-20.
//

import SwiftUI

struct swiftuibadge: View {
    var body: some View {
        HStack {
            Image(systemName: "swift")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
//            Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
//                .mask(
//                    Image("logo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(alignment: .center))
//                .frame(width: 24, height: 24)
            
            
            VStack {
                Text("coded in")
                    .font(.system(size: 10, weight: .regular, design: .rounded))
                Text("SwiftUI")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
            }
            .foregroundColor(Color("text"))
        }
        .padding(.horizontal, 16.0)
        .padding(.vertical, 8)
        
        .background(Color("bg"))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color: Color.black.opacity(0.15), radius: 12, x: 0, y: 8)
        .animation(Animation.spring().delay(0.01))
    }
}

struct swiftuibadge_Previews: PreviewProvider {
    static var previews: some View {
        swiftuibadge()
    }
}
